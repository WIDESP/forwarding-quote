# 포워딩 견적문의 v4 — Vercel + Supabase 테스트 배포

## Supabase
1. 무료 Supabase 프로젝트 생성
2. SQL Editor에서 `supabase.sql` 전체 실행
3. Authentication > Users에서 관리자 이메일/비밀번호 생성
4. Project Settings > API Keys에서 **Publishable key** 확인 (`sb_publishable_...`)
5. `sb_secret_...` 키는 사용하지 않습니다.

## Vercel
GitHub에 이 폴더 전체를 올린 뒤 Vercel에서 Import합니다.

Environment Variables:
- `SUPABASE_URL` = Supabase Project URL
- `SUPABASE_PUBLISHABLE_KEY` = Supabase Publishable key (`sb_publishable_...`)

저장 후 Redeploy합니다.

고객: `https://발급주소.vercel.app/`
관리자: `https://발급주소.vercel.app/admin`
