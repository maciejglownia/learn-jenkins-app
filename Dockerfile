FROM mcr.microsoft.com/playwright:v1.39.0-jammy
# Update package lists and install jq
RUN apt-get update && apt-get install -y \
    jq \
    && npm install -g netlify-cli node-jq serve \
    && apt-get clean

# Continue with the rest of your Dockerfile