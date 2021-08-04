# heroku-test-pipeline
A minimal code to watch behavior of a pipeline

## Steps
- Navigate to https://dashboard.heroku.com/pipelines/new and create a pipeline
- Navigate to Settings tab for the pipeline
  - Connect to GitHub
  - Enable Review Apps
- Navigate to Pipeline tab
  - Add app to Staging
- Prepare the app
  - Navigate to Deploy tab and enable Automatic Deploys
  - `heroku buildpacks:add https://github.com/zunda/heroku-buildpack-sh.git`
- Push the code to GitHub
