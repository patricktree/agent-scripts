---
name: update-change-walkthrough-skill
description: To update the skill `change-walkthrough`
---

# Update skill `change-walkthrough`

```bash
CENTRAL_SKILLS_DIR=~/.agents/skills

rm -rf $CENTRAL_SKILLS_DIR/change-walkthrough
git clone https://github.com/SawyerHood/sawyer-mart.git /tmp/change-walkthrough-skill
cp -r /tmp/change-walkthrough-skill/plugins/change-walkthrough/skills/change-walkthrough $CENTRAL_SKILLS_DIR/change-walkthrough
rm -rf /tmp/change-walkthrough-skill
```
