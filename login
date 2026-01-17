import { useState } from 'react';
import { Button } from './ui/button';
import { Input } from './ui/input';
import { Label } from './ui/label';

interface LoginPageProps {
  onLogin: () => void;
}

export function LoginPage({ onLogin }: LoginPageProps) {
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    onLogin();
  };

  return (
    <div className="min-h-screen w-full flex items-center justify-center bg-[#1e293b] p-8">
      <div className="w-full max-w-md space-y-8">
        <div className="text-center space-y-2">
          <h1 className="text-3xl font-bold text-[#3b82f6]">Financial Risk Radar</h1>
          <p className="text-[#3b82f6] text-sm">Understand your financial risk</p>
        </div>

        <div className="space-y-6">
          <h2 className="text-2xl font-semibold text-white text-center">Sign in to your account</h2>

          <form onSubmit={handleSubmit} className="space-y-6">
            <div className="space-y-2">
              <Label htmlFor="email" className="text-gray-300">Email ID</Label>
              <Input
                id="email"
                type="email"
                placeholder="your.email@example.com"
                value={email}
                onChange={(e) => setEmail(e.target.value)}
                required
                className="bg-[#334155] border-transparent text-white placeholder:text-gray-500"
              />
            </div>

            <div className="space-y-2">
              <Label htmlFor="password" className="text-gray-300">Password</Label>
              <Input
                id="password"
                type="password"
                placeholder="Enter your password"
                value={password}
                onChange={(e) => setPassword(e.target.value)}
                required
                className="bg-[#334155] border-transparent text-white placeholder:text-gray-500"
              />
            </div>

            <Button type="submit" className="w-full bg-[#3b82f6] hover:bg-[#2563eb] text-white">
              Sign In
            </Button>
          </form>

          <div className="text-center">
            <button type="button" className="text-gray-400 hover:text-gray-300 text-sm">
              Forgot Password?
            </button>
          </div>

          <div className="text-center text-sm text-gray-400">
            Don't have an account?{' '}
            <button type="button" className="text-[#3b82f6] hover:underline">
              Create Account
            </button>
          </div>

          <p className="text-center text-xs text-gray-500 pt-4">
            Your data is encrypted and never shared
          </p>
        </div>
      </div>
    </div>
  );
}
