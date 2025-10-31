# MINDBRIDGE - Team Workflow & Task Division

## 🎯 Team Structure (7 Members)

### Frontend Team (3 Members)
- **Frontend Lead** + 2 Frontend Developers

### Backend Team (4 Members)  
- **Backend Lead** + 3 Backend Developers

---

## 🚀 Getting Started - Initial Setup (Everyone)

### 1. Clone the Repository

```powershell
git clone https://github.com/Kellia855/movie-show.git mindbridge
cd mindbridge
```

### 2. Create Your Branch

**Frontend Team:**
```powershell
# Frontend Lead
git checkout -b frontend/main-layout

# Frontend Dev 1
git checkout -b frontend/booking-ui

# Frontend Dev 2
git checkout -b frontend/library-events
```

**Backend Team:**
```powershell
# Backend Lead
git checkout -b backend/user-auth

# Backend Dev 1
git checkout -b backend/bookings-api

# Backend Dev 2
git checkout -b backend/posts-library

# Backend Dev 3
git checkout -b backend/events-admin
```

### 3. Setup Development Environment

```powershell
# Create virtual environment
python -m venv venv
.\venv\Scripts\Activate.ps1

# Install dependencies
pip install -r requirements.txt

# Create .env file
Copy-Item .env.example .env
# Then edit .env with your database credentials
```

### 4. Setup Database (One person, share credentials)

```sql
CREATE DATABASE mindbridge_db CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
```

### 5. Run Initial Migrations

```powershell
python manage.py makemigrations
python manage.py migrate
python manage.py createsuperuser
```

---

## 📋 Task Division

## 🎨 FRONTEND TEAM TASKS

### Frontend Lead - Main Layout & Navigation
**Branch:** `frontend/main-layout`

**Priority Tasks:**
1. ✅ Review and test existing base.html
2. ✅ Review and test existing home.html  
3. ✅ Enhance mobile responsiveness
4. ✅ Add loading states
5. ✅ Implement search functionality
6. ✅ Create 404 and 500 error pages
7. ✅ Add breadcrumbs navigation
8. ✅ Optimize images and assets

**Files to Work On:**
- `templates/base.html` (enhancements)
- `templates/home.html` (polish)
- `templates/404.html` (create)
- `templates/500.html` (create)
- `static/css/style.css` (refinements)
- `static/js/main.js` (add features)

**Deliverables:**
- [ ] Mobile menu working perfectly
- [ ] Search bar functionality
- [ ] Error pages designed
- [ ] Loading spinners
- [ ] Breadcrumb component

---

### Frontend Dev 1 - Booking & User Pages
**Branch:** `frontend/booking-ui`

**Priority Tasks:**
1. ✅ Test booking form (already created)
2. ✅ Test booking list page (already created)
3. Create booking detail page
4. Create user profile page
5. Create user dashboard
6. Add calendar widget for date selection
7. Add form validation feedback
8. Create booking confirmation modal

**Files to Work On:**
- `templates/bookings/booking_detail.html` (create)
- `templates/users/profile.html` (create)
- `templates/users/dashboard.html` (create)
- `static/css/booking.css` (create for specific styles)
- `static/js/booking.js` (create for booking interactions)

**Deliverables:**
- [ ] Booking detail page with all info
- [ ] User profile with edit capability
- [ ] Dashboard showing stats
- [ ] Interactive calendar picker
- [ ] Form validation messages

---

### Frontend Dev 2 - Library & Events Pages
**Branch:** `frontend/library-events`

**Priority Tasks:**
1. Create library list page
2. Create library book detail page
3. Create events list page
4. Create event detail page
5. Create community posts page
6. Add search and filter UI
7. Create category badges
8. Add pagination component

**Files to Work On:**
- `templates/library/library_list.html` (create)
- `templates/library/book_detail.html` (create)
- `templates/events/event_list.html` (create)
- `templates/events/event_detail.html` (create)
- `templates/posts/post_list.html` (create)
- `templates/posts/post_form.html` (create)
- `static/css/library.css` (create)
- `static/css/events.css` (create)

**Deliverables:**
- [ ] Library with book cards and filters
- [ ] Book detail with download/link
- [ ] Events list with registration
- [ ] Event detail page
- [ ] Community posts interface
- [ ] Search/filter functionality

---

## 💻 BACKEND TEAM TASKS

### Backend Lead - User Authentication & Authorization
**Branch:** `backend/user-auth`

**Priority Tasks:**
1. ✅ Review existing user model (already done)
2. ✅ Review auth views (already done)
3. Add email verification
4. Add password reset functionality
5. Add user profile update view
6. Implement user permissions
7. Create user dashboard view
8. Add session management
9. Write unit tests for auth

**Files to Work On:**
- `users/views.py` (enhance)
- `users/forms.py` (add password reset)
- `users/models.py` (add email verification)
- `users/tests.py` (create)
- `users/emails.py` (create)
- `users/tokens.py` (create)

**Deliverables:**
- [ ] Email verification working
- [ ] Password reset via email
- [ ] Profile update functionality
- [ ] User permissions system
- [ ] Dashboard with user stats
- [ ] 80%+ test coverage

---

### Backend Dev 1 - Bookings System
**Branch:** `backend/bookings-api`

**Priority Tasks:**
1. ✅ Review booking model (already updated)
2. ✅ Review booking views (already created)
3. Add booking detail view
4. Add booking status update (wellness team)
5. Add booking notifications (email/SMS)
6. Add booking calendar availability
7. Add booking cancellation logic
8. Create booking analytics
9. Write unit tests

**Files to Work On:**
- `bookings/views.py` (enhance)
- `bookings/models.py` (add methods)
- `bookings/admin.py` (customize)
- `bookings/notifications.py` (create)
- `bookings/utils.py` (create helpers)
- `bookings/tests.py` (create)

**Deliverables:**
- [ ] Booking detail view working
- [ ] Status update functionality
- [ ] Email notifications on status change
- [ ] Calendar availability checker
- [ ] Cancellation with rules
- [ ] Admin dashboard metrics
- [ ] 80%+ test coverage

---

### Backend Dev 2 - Posts & Library Management
**Branch:** `backend/posts-library`

**Priority Tasks:**
1. Create post views (list, create, detail, delete)
2. Add post moderation system
3. Add like/reaction system
4. Create library views (list, detail)
5. Add library search functionality
6. Add library category filters
7. Add file upload handling
8. Write unit tests

**Files to Work On:**
- `posts/views.py` (create all views)
- `posts/models.py` (enhance if needed)
- `posts/admin.py` (moderation features)
- `library/views.py` (create)
- `library/models.py` (enhance)
- `library/utils.py` (search/filter)
- `posts/tests.py` (create)
- `library/tests.py` (create)

**Deliverables:**
- [ ] Post CRUD operations
- [ ] Moderation queue for wellness team
- [ ] Like/reaction system
- [ ] Library list with search
- [ ] Category filtering
- [ ] Book detail view
- [ ] File upload working
- [ ] 80%+ test coverage

---

### Backend Dev 3 - Events & Admin Features
**Branch:** `backend/events-admin`

**Priority Tasks:**
1. Create event views (list, detail)
2. Add event registration system
3. Add event capacity management
4. Add event attendance tracking
5. Create admin dashboard
6. Add analytics and reporting
7. Create data export features
8. Write unit tests

**Files to Work On:**
- `events/views.py` (create)
- `events/models.py` (enhance)
- `events/admin.py` (customize)
- `mindbridge/dashboard.py` (create admin dashboard)
- `mindbridge/analytics.py` (create)
- `mindbridge/exports.py` (create)
- `events/tests.py` (create)

**Deliverables:**
- [ ] Event list and detail views
- [ ] Registration system with limits
- [ ] Waitlist functionality
- [ ] Attendance check-in
- [ ] Admin dashboard with charts
- [ ] Export bookings/events to CSV
- [ ] 80%+ test coverage

---

## 🔄 Git Workflow (IMPORTANT!)

### Daily Workflow

1. **Start Your Day - Pull Latest Changes**
```powershell
git checkout master
git pull origin master
git checkout your-branch-name
git merge master  # Merge latest changes into your branch
```

2. **Work on Your Tasks**
```powershell
# Make changes to your files
# Test your changes
python manage.py runserver
```

3. **Commit Your Changes**
```powershell
git add .
git commit -m "feat: add booking detail page"
```

4. **Push to GitHub**
```powershell
git push origin your-branch-name
```

5. **Create Pull Request**
- Go to GitHub repository
- Click "New Pull Request"
- Select your branch
- Add description of changes
- Request review from team lead
- Wait for approval

6. **After PR is Approved**
```powershell
# Team lead will merge to master
# Then everyone updates:
git checkout master
git pull origin master
```

### Commit Message Convention

Use these prefixes:
- `feat:` - New feature
- `fix:` - Bug fix
- `style:` - CSS/UI changes
- `refactor:` - Code restructuring
- `test:` - Adding tests
- `docs:` - Documentation

**Examples:**
```bash
git commit -m "feat: add user profile page"
git commit -m "fix: booking form validation error"
git commit -m "style: improve mobile navigation"
git commit -m "test: add booking model tests"
```

---

## 📅 Sprint Planning (2-Week Sprints)

### Week 1: Foundation
**Frontend:**
- Complete existing page testing
- Create remaining templates
- Basic styling

**Backend:**
- Enhance existing views
- Add core functionality
- Start testing

### Week 2: Polish & Integration
**Frontend:**
- Advanced interactions
- Responsive refinements
- Cross-browser testing

**Backend:**
- Complete all features
- Full test coverage
- Integration testing

---

## 🤝 Collaboration Guidelines

### Code Review Process

1. **Before Creating PR:**
   - Test your code thoroughly
   - Run migrations if you changed models
   - Check for console errors
   - Verify responsive design

2. **PR Description Should Include:**
   - What you changed
   - Why you changed it
   - How to test it
   - Screenshots (if UI changes)

3. **Code Review Checklist:**
   - Code follows project style
   - No console errors
   - Responsive on mobile
   - No duplicate code
   - Proper error handling
   - Comments for complex logic

### Communication

**Daily Standup (10 minutes):**
- What did you do yesterday?
- What will you do today?
- Any blockers?

**Use GitHub Issues:**
- Create issues for bugs
- Create issues for features
- Assign to yourself when working

**Communication Channels:**
- Quick questions: Team chat
- Code questions: GitHub comments
- Blockers: Tag team lead

---

## 🧪 Testing Guidelines

### Frontend Testing
```javascript
// Manual testing checklist
✓ All links work
✓ Forms validate correctly
✓ Mobile responsive
✓ No console errors
✓ Images load
✓ Fast page load
```

### Backend Testing
```python
# Run tests
python manage.py test

# Run specific app tests
python manage.py test bookings

# Check coverage
pip install coverage
coverage run manage.py test
coverage report
```

---

## 📊 Progress Tracking

### Use GitHub Project Board

**Columns:**
1. To Do
2. In Progress
3. In Review
4. Done

**Each team member:**
- Move your tasks through columns
- Update daily
- Add comments on blockers

---

## 🎯 Success Metrics

### Frontend Team
- [ ] All pages responsive
- [ ] No console errors
- [ ] Page load < 3 seconds
- [ ] Cross-browser compatible
- [ ] Accessible (WCAG AA)

### Backend Team
- [ ] All features working
- [ ] 80%+ test coverage
- [ ] No security vulnerabilities
- [ ] API response < 500ms
- [ ] Proper error handling

---

## 🚨 Common Issues & Solutions

### Merge Conflicts
```powershell
# When you get conflicts
git status  # See conflicted files
# Edit files to resolve conflicts
# Look for <<<<<<< HEAD markers
git add .
git commit -m "fix: resolve merge conflicts"
```

### Database Out of Sync
```powershell
python manage.py makemigrations
python manage.py migrate
```

### Static Files Not Loading
```powershell
python manage.py collectstatic --noinput
```

---

## 📞 Getting Help

1. **Check Documentation First:**
   - README.md
   - QUICKSTART.md
   - This file

2. **Search GitHub Issues:**
   - Someone may have same problem

3. **Ask Team:**
   - Post in team chat
   - Tag relevant person

4. **Create GitHub Issue:**
   - If it's a bug or feature request

---

## 🎓 Learning Resources

### Frontend
- Django Templates: https://docs.djangoproject.com/en/4.2/topics/templates/
- CSS Grid: https://css-tricks.com/snippets/css/complete-guide-grid/
- Flexbox: https://css-tricks.com/snippets/css/a-guide-to-flexbox/
- JavaScript: https://javascript.info/

### Backend
- Django Documentation: https://docs.djangoproject.com/
- Django Testing: https://docs.djangoproject.com/en/4.2/topics/testing/
- Django ORM: https://docs.djangoproject.com/en/4.2/topics/db/queries/
- Python Best Practices: https://pep8.org/

---

## ✅ Weekly Checklist

### Every Monday:
- [ ] Pull latest master
- [ ] Review sprint tasks
- [ ] Plan weekly goals
- [ ] Update project board

### Every Friday:
- [ ] Push all commits
- [ ] Create PRs for completed work
- [ ] Review team PRs
- [ ] Update documentation
- [ ] Demo completed features

---

## 🎉 Let's Build Something Amazing!

Remember:
- Communicate often
- Help each other
- Test thoroughly
- Document well
- Have fun coding!

**Questions?** Ask in the team chat or create a GitHub issue.

---

**MINDBRIDGE Team - Building Better Mental Health Support Together** 🧠💙
