#!/bin/bash

echo "🚀 BookApp - Docker Access"
echo "=========================="

echo "✅ DOCKER ACCESS:"
echo "   Frontend: http://localhost:3000"
echo "   API:      http://localhost:5000/api/categories"
echo ""

echo "🔍 Testing connections..."
if curl -s http://localhost:3000 > /dev/null; then
    echo "✅ Frontend: Working"
else
    echo "❌ Frontend: Failed"
fi

if curl -s http://localhost:5000/api/categories > /dev/null; then
    echo "✅ API: Working"
else
    echo "❌ API: Failed"
fi

echo ""
echo "🎉 BookApp is ready! Open your browser to:"
echo "   http://localhost:3000"
