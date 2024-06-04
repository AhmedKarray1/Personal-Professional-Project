# CI/CD Pipeline for Flutter Application

This repository contains the CI and CD pipelines for our Flutter application, running on a self-hosted runner on an Azure VM. Our team members are Samer Mansouri, Ahmed Karray, Elyes Belgouthi, and Omar Maalej.

## Team Members

- Samer Mansouri
- Ahmed Karray
- Elyes Belgouthi
- Omar Maalej

## Technologies Used

### CI/CD Platform
<img src="https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png" alt="GitHub Actions" width="50"/>

### Programming Language and Framework
<img src="https://storage.googleapis.com/cms-storage-bucket/0dbfcc7a59cd1cf16282.png" alt="Flutter" width="50"/>
<img src="https://www.ruby-lang.org/images/header-ruby-logo.png" alt="Ruby" width="50"/>

### Dependency Management and Automation
<img src="https://bundler.io/images/logo-black.png" alt="Bundler" width="100"/>
<img src="https://fastlane.tools/assets/img/fastlane_text.png" alt="Fastlane" width="100"/>
<img src="https://www.owasp.org/themes/owasp/assets/images/logo.png" alt="OWASP" width="50"/>

### Communication
<img src="https://a.slack-edge.com/80588/marketing/img/icons/icon_slack_hash_colored.png" alt="Slack" width="50"/>

## CI Pipeline

The CI pipeline runs on pull requests to the `main` branch. It includes the following steps:

1. **Checkout Code**: Checks out the repository code.
2. **Set up Flutter**: Sets up the Flutter environment with the specified version.
3. **Install Dependencies**: Installs necessary dependencies for the Flutter project.
4. **Run Linter**: Runs the Flutter linter to ensure code quality.
5. **Run Tests**: Runs the Flutter tests.
6. **Install Ruby and Bundle Audit**: Installs Ruby, Bundler, and Bundle Audit for dependency checking.
7. **Install OWASP Dependency-Check**: Installs OWASP Dependency-Check for identifying vulnerabilities in dependencies.
8. **Verify OWASP Dependency-Check Installation**: Verifies the installation of OWASP Dependency-Check.
9. **Run OWASP Dependency-Check**: Runs OWASP Dependency-Check on the project dependencies.
10. **Send Success Notification to Slack**: Sends a success notification to Slack if all steps pass.
11. **Send Failure Notification to Slack**: Sends a failure notification to Slack if any step fails.

## CD Pipeline

The CD pipeline runs on pushes to the `main` branch. It includes the following steps:

1. **Checkout Code**: Checks out the repository code.
2. **Set up Flutter**: Sets up the Flutter environment with the specified version.
3. **Prepare Environment**: Prepares the environment, including creating necessary directories and setting environment variables.
4. **Install Bundler**: Installs Bundler for managing Ruby gems.
5. **Setup Fastlane**: Sets up Fastlane for deployment.
6. **Install Dependencies**: Installs necessary dependencies for the Flutter project.
7. **Run Linter**: Runs the Flutter linter to ensure code quality.
8. **Run Tests**: Runs the Flutter tests.
9. **Build**: Builds the Flutter APK.
10. **Deploy with Fastlane**: Deploys the APK using Fastlane.
11. **Send Success Notification to Slack**: Sends a success notification to Slack if all steps pass.
12. **Send Failure Notification to Slack**: Sends a failure notification to Slack if any step fails.

## Running the Pipelines

### CI Pipeline

The CI pipeline is triggered by pull requests to the `main` branch. To run the CI pipeline, create a pull request with your changes, and the pipeline will automatically run the defined steps.

### CD Pipeline

The CD pipeline is triggered by pushes to the `main` branch. To run the CD pipeline, push your changes to the `main` branch, and the pipeline will automatically run the defined steps.

## Notifications

Both pipelines send notifications to a Slack channel to inform the team of the status of the build. Notifications include details about whether the build was successful or if there were any failures.

### Slack Integration

Ensure that the `SLACK_WEBHOOK_URL` secret is configured in the repository settings to enable Slack notifications. This secret should contain the webhook URL for your Slack channel.

## Setting Up the Environment

The pipelines are designed to run on a self-hosted runner on an Azure VM. Ensure that the VM has the necessary dependencies installed and that the environment variables are correctly configured.

## Conclusion

By following these steps and configurations, our team can ensure a smooth CI/CD process for the Flutter application, with automated linting, testing, dependency checking, and deployment.
