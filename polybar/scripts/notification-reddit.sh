#!/bin/sh

URL="https://www.reddit.com/message/unread/.json?feed=a3d790827fdd676c8588a799372cd15dde240718&user=aruffj_"
USERAGENT="polybar-scripts/notification-reddit:v1.0 u/aruffj_"

notifications=$(curl -sf --user-agent "$USERAGENT" "$URL" | jq '.["data"]["children"] | length')

if [ -n "$notifications" ] && [ "$notifications" -gt 0 ]; then
    echo "  $notifications"
else
    echo "  0"
fi
