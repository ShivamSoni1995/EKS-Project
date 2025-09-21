#!/bin/bash

echo "🚀 BookApp - Kubernetes Access"
echo "=============================="

# Kill any existing port forwards
pkill -f "kubectl port-forward" 2>/dev/null

# Start port forward to ingress controller
echo "📡 Setting up ingress port forward..."
kubectl port-forward -n ingress-nginx service/ingress-nginx-controller 9080:80 > /tmp/bookapp-ingress.log 2>&1 &

# Wait for port forward to be ready
sleep 3

echo ""
echo "✅ INGRESS ACCESS:"
echo "   Frontend: http://localhost:9080/"
echo "   API:      http://localhost:9080/api/categories"
echo ""
echo "🧪 TEST COMMANDS:"
echo "   curl http://localhost:9080/"
echo "   curl http://localhost:9080/api/categories"
echo ""
echo "🛑 To stop: pkill -f 'kubectl port-forward'"
echo ""

# Test connections
echo "🔍 Testing connections..."
sleep 2
if curl -s http://localhost:9080/ > /dev/null; then
    echo "✅ Frontend: Working"
else
    echo "❌ Frontend: Failed"
fi

if curl -s http://localhost:9080/api/categories > /dev/null; then
    echo "✅ API: Working"
else
    echo "❌ API: Failed"
fi

echo ""
echo "🎉 BookApp is ready! Open your browser to:"
echo "   http://localhost:9080/"
