#!/bin/bash

# PostgreSQL 연결 정보 (Docker 환경에 맞게 수정하세요)
DB_HOST="localhost"
DB_PORT="5432"
DB_NAME="mydb"
DB_USER="myuser"
DB_PASSWORD="mypassword"

# 통합 스키마 파일 경로
SCHEMA_FILE="integrated_schema.sql"

echo "PostgreSQL에 통합 스키마를 적용합니다..."

# PostgreSQL에 스키마 적용
PGPASSWORD=$DB_PASSWORD psql -h $DB_HOST -p $DB_PORT -U $DB_USER -d $DB_NAME -f $SCHEMA_FILE

if [ $? -eq 0 ]; then
    echo "✅ 스키마가 성공적으로 적용되었습니다!"
    echo "생성된 테이블:"
    echo "- users"
    echo "- stock"
    echo "- index_info"
    echo "- portfolio"
    echo "- portfolio_item"
    echo "- stock_price"
    echo "- index_price"
    echo "- stock_name_history"
else
    echo "❌ 스키마 적용 중 오류가 발생했습니다."
    exit 1
fi
