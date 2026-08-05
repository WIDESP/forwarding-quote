# 포워딩 견적문의 — Vercel + Supabase 테스트 배포

## 이번 수정
Vercel 최신 배포 환경에서 `nodejs20.x`를 명시하면 Function Runtime 오류가 발생할 수 있어 `vercel.json`에서 고정 runtime 설정을 제거했습니다. Vercel이 API 함수의 Node.js runtime을 자동 선택합니다.

## GitHub
이 폴더의 내용을 기존 `forwarding-quote` 저장소에 업로드하고 Commit changes 하세요.
특히 루트의 `vercel.json`을 새 파일로 교체해야 합니다.

## Vercel 환경변수
- `SUPABASE_URL` = `https://ltoizahxjupwdcwdaibp.supabase.co`
- `SUPABASE_PUBLISHABLE_KEY` = Supabase API Keys의 `sb_publishable_...`

## 접속
- 고객: `/`
- 관리자: `/admin`
