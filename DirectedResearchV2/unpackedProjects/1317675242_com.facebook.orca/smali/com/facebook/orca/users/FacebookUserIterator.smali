.class public Lcom/facebook/orca/users/FacebookUserIterator;
.super Ljava/lang/Object;
.source "FacebookUserIterator.java"


# static fields
.field private static final d:[Ljava/lang/String;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/facebook/orca/users/UserSerialization;

.field private c:Landroid/database/Cursor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "fbid"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "first_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "last_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "email_addresses"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "phone_numbers"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pic_big"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "pic_square"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "pic_crop"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "rank"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "is_pushable"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/orca/users/FacebookUserIterator;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/users/UserSerialization;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 48
    iput-object p2, p0, Lcom/facebook/orca/users/FacebookUserIterator;->b:Lcom/facebook/orca/users/UserSerialization;

    .line 49
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 52
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "facebook_users"

    sget-object v2, Lcom/facebook/orca/users/FacebookUserIterator;->d:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    .line 53
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    const-string v0, "fbid IN ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v0, "SELECT DISTINCT fbid FROM facebook_users_name_lookup "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v0, "WHERE normalized_name GLOB "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/facebook/orca/common/names/NameNormalizer;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "*\') "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 63
    const-string v2, "facebook_users"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->a:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/facebook/orca/users/FacebookUserIterator;->d:[Ljava/lang/String;

    const-string v7, "rank DESC"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    .line 67
    return-void
.end method

.method public a(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    const-string v0, "fbid IN "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-static {p1}, Lcom/facebook/orca/common/util/SqlUtil;->b(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 75
    const-string v2, "facebook_users"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->a:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/facebook/orca/users/FacebookUserIterator;->d:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    .line 78
    return-void
.end method

.method public b()Lcom/facebook/orca/users/User;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0xa

    const/16 v1, 0x8

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->b:Lcom/facebook/orca/users/UserSerialization;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserSerialization;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->b:Lcom/facebook/orca/users/UserSerialization;

    iget-object v2, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/users/UserSerialization;->c(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/facebook/orca/users/FacebookUserIterator;->b:Lcom/facebook/orca/users/UserSerialization;

    iget-object v3, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/orca/users/UserSerialization;->d(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 94
    sget-object v3, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    .line 95
    iget-object v4, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v4, v5}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 96
    iget-object v3, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    sget-object v3, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    .line 103
    :cond_0
    :goto_1
    new-instance v4, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v4}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    sget-object v5, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    iget-object v6, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/users/UserBuilder;->c(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v4, 0x6

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/users/UserBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/4 v4, 0x7

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/users/UserBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/PicCropInfo;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    const/16 v2, 0x9

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/users/UserBuilder;->a(F)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/common/util/TriState;)Lcom/facebook/orca/users/UserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserBuilder;->p()Lcom/facebook/orca/users/User;

    move-result-object v0

    .line 118
    :goto_2
    return-object v0

    .line 99
    :cond_1
    sget-object v3, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 118
    goto :goto_2

    :cond_3
    move-object v0, v2

    goto/16 :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/users/FacebookUserIterator;->c:Landroid/database/Cursor;

    .line 126
    :cond_0
    return-void
.end method
