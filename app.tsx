import { useState } from 'react';
import { LoginPage } from './components/LoginPage';
import { OnboardingPage } from './components/OnboardingPage';
import { FintechDashboard } from './components/FintechDashboard';

type AppState = 'login' | 'onboarding' | 'dashboard';

export default function App() {
  const [appState, setAppState] = useState<AppState>('login');
  const [financialData, setFinancialData] = useState<any>(null);

  const handleLogin = () => {
    setAppState('onboarding');
  };

  const handleOnboardingComplete = (data: any) => {
    setFinancialData(data);
    setAppState('dashboard');
  };

  return (
    <div className="size-full">
      {appState === 'login' && <LoginPage onLogin={handleLogin} />}
      {appState === 'onboarding' && <OnboardingPage onComplete={handleOnboardingComplete} />}
      {appState === 'dashboard' && <FintechDashboard data={financialData} />}
    </div>
  );
}
