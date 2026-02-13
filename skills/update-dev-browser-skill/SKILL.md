---
name: update-dev-browser-skill
description: To update the skill `dev-browser`
---

# Update skill `dev-browser`

```bash
CENTRAL_SKILLS_DIR=~/.agents/skills

rm -rf $CENTRAL_SKILLS_DIR/dev-browser
git clone https://github.com/sawyerhood/dev-browser /tmp/dev-browser-skill
cp -r /tmp/dev-browser-skill/skills/dev-browser $CENTRAL_SKILLS_DIR/dev-browser
rm -rf /tmp/dev-browser-skill
```
