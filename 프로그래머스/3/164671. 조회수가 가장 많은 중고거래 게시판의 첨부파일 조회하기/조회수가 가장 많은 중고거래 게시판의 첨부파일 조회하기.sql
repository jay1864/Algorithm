SELECT CONCAT('/home/grep/src/', BOARD_ID, '/', FILE_ID, FILE_NAME, FILE_EXT) AS FILE_PATH
FROM USED_GOODS_FILE
WHERE BOARD_ID = (SELECT BOARD_ID FROM USED_GOODS_BOARD ORDER BY VIEWS DESC LIMIT 1)
ORDER BY FILE_ID DESC;

# 조회수가 가장 높은 중고거래 게시물에 대한 첨부파일 경로를 조회
# FILE ID를 기준으로 내림차순 정렬
# 파일경로 : /home/grep/src/게시글ID/파일이름
# 파일이름 : 파일 ID + 파일 이름 + 파일 확장자
# 조회수가 가장 높은 게시물은 하나만 존재

# 필요 컬럼
# USED_GOODS_BOARD : VIEWS, BOARD_ID
# USED_GOODS_FILE : FILE_ID, FILE_EXT, FILE_NAME, BOARD_ID