# Krishi Ledger

Offline-first farming management app (Flutter) + Node.js/MySQL backend.

## Folder Structure
- `lib/` Flutter app code (Riverpod + GoRouter + FL Chart + Flutter Map-ready stack)
- `backend/` Express API + MySQL schema
- `.github/workflows/flutter.yml` CI debug APK build

## Install & Run (Flutter)
1. Install Flutter stable SDK and Android toolchain.
2. Run:
   ```bash
   flutter pub get
   flutter run
   ```

## Build Debug APK
```bash
flutter build apk --debug
```

## Backend Setup
```bash
cd backend
npm install
cp .env.example .env
npm start
```

Create `.env`:
```env
PORT=4000
DB_HOST=127.0.0.1
DB_USER=root
DB_PASS=your_password
DB_NAME=krishi_ledger
```

## MySQL Setup
```bash
mysql -u root -p < backend/sql/schema.sql
```

## Shared Hosting Deployment (Backend)
1. Upload `backend/` directory to hosting file manager.
2. Create MySQL DB and user from cPanel.
3. Update `.env` DB values.
4. Run `npm install --production` (or use hosting Node app installer).
5. Set app entrypoint to `src/server.js` and start app.
6. Verify `GET /health` endpoint.
