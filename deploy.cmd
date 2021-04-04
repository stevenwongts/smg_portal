    @echo off
    IF "%SITE_FLAVOR%" == "nodejs" (
      deploy.node.cmd
    ) ELSE (
      IF "%SITE_FLAVOR%" == "ssmgwebapp" (
        deploy.ssmgwebapp.cmd
      ) ELSE (
        echo You have to set SITE_FLAVOR setting to either "nodejs" or "ssmgwebapp"
        exit /b 1
      )
    )