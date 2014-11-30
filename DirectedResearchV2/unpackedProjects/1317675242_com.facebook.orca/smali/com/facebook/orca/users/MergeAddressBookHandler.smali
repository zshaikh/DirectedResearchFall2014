.class public Lcom/facebook/orca/users/MergeAddressBookHandler;
.super Ljava/lang/Object;
.source "MergeAddressBookHandler.java"


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteDatabase;

.field private final b:Lcom/facebook/orca/users/UserSerialization;

.field private final c:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/PhoneUserIterator;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/FacebookUserIterator;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/database/sqlite/SQLiteStatement;

.field private f:Landroid/database/sqlite/SQLiteStatement;

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/orca/users/UserSerialization;Lcom/google/inject/Provider;Lcom/google/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/facebook/orca/users/UserSerialization;",
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/PhoneUserIterator;",
            ">;",
            "Lcom/google/inject/Provider",
            "<",
            "Lcom/facebook/orca/users/FacebookUserIterator;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->g:I

    .line 31
    iput v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->h:I

    .line 38
    iput-object p1, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 39
    iput-object p2, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->b:Lcom/facebook/orca/users/UserSerialization;

    .line 40
    iput-object p3, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->c:Lcom/google/inject/Provider;

    .line 41
    iput-object p4, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->d:Lcom/google/inject/Provider;

    .line 42
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->f:Landroid/database/sqlite/SQLiteStatement;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->f:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 157
    :goto_0
    return v0

    .line 155
    :catch_0
    move-exception v0

    .line 157
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private a(ILcom/facebook/orca/users/UserKey;)V
    .locals 4

    .prologue
    .line 162
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 163
    const-string v1, "cluster_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v1, "user_key"

    invoke-virtual {p2}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "clusters"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 166
    return-void
.end method

.method private a(Lcom/facebook/orca/users/User;)V
    .locals 2

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/MergeAddressBookHandler;->b(Lcom/facebook/orca/users/User;)I

    move-result v0

    .line 121
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 122
    iget v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->h:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->h:I

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/orca/users/MergeAddressBookHandler;->a(ILcom/facebook/orca/users/UserKey;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/MergeAddressBookHandler;->c(Lcom/facebook/orca/users/User;)V

    .line 129
    return-void
.end method

.method private b(Lcom/facebook/orca/users/User;)I
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->t()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v6

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserIdentifier;

    .line 134
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserIdentifier;->c()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserIdentifier;->f()Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->name()Ljava/lang/String;

    move-result-object v0

    .line 137
    :try_start_0
    iget-object v4, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->e:Landroid/database/sqlite/SQLiteStatement;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 138
    iget-object v3, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->e:Landroid/database/sqlite/SQLiteStatement;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-direct {p0, v0}, Lcom/facebook/orca/users/MergeAddressBookHandler;->a(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 141
    if-eq v0, v6, :cond_0

    .line 148
    :goto_1
    return v0

    .line 144
    :catch_0
    move-exception v0

    move v0, v2

    :cond_0
    move v2, v0

    .line 147
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private c(Lcom/facebook/orca/users/User;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 169
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->j()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserEmailAddress;

    .line 170
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 171
    const-string v3, "identifier"

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserEmailAddress;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v0, "type"

    sget-object v3, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->EMAIL:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string v0, "user_key"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "identifiers"

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->k()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 178
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 179
    const-string v3, "identifier"

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserPhoneNumber;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v0, "type"

    sget-object v3, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->PHONE:Lcom/facebook/orca/users/UserIdentifier$IdentifierType;

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserIdentifier$IdentifierType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    const-string v0, "user_key"

    invoke-virtual {p1}, Lcom/facebook/orca/users/User;->c()Lcom/facebook/orca/users/UserKey;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/orca/users/UserKey;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "identifiers"

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    .line 184
    :cond_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 46
    const-wide/16 v0, 0x5

    :try_start_0
    invoke-static {v0, v1}, Lcom/facebook/orca/debug/Tracer;->a(J)V

    .line 47
    const-string v0, "run"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    :try_start_1
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->e:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT user_key FROM identifiers WHERE identifier=? AND type=? LIMIT 1"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->e:Landroid/database/sqlite/SQLiteStatement;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->f:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT cluster_id FROM clusters WHERE user_key=?"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->f:Landroid/database/sqlite/SQLiteStatement;

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 60
    :try_start_2
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "identifiers"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "clusters"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    const-string v0, "phone"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 65
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->c:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PhoneUserIterator;

    .line 66
    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 69
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->c()Lcom/facebook/orca/users/User;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 70
    invoke-direct {p0, v3}, Lcom/facebook/orca/users/MergeAddressBookHandler;->a(Lcom/facebook/orca/users/User;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->b()V

    .line 74
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 93
    :catchall_1
    move-exception v0

    :try_start_5
    iget-object v2, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 105
    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    const-string v1, "orca:MergeAddressBookHandler"

    const-string v2, "Exception"

    invoke-static {v1, v2, v0}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    :goto_1
    return-void

    .line 73
    :cond_2
    :try_start_7
    invoke-virtual {v0}, Lcom/facebook/orca/users/PhoneUserIterator;->b()V

    .line 74
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 78
    const-string v0, "fb"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->a(Ljava/lang/String;)Lcom/facebook/orca/debug/Tracer;

    move-result-object v2

    .line 79
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->d:Lcom/google/inject/Provider;

    invoke-interface {v0}, Lcom/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/FacebookUserIterator;

    .line 80
    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 83
    :goto_2
    :try_start_8
    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->b()Lcom/facebook/orca/users/User;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 84
    invoke-direct {p0, v3}, Lcom/facebook/orca/users/MergeAddressBookHandler;->a(Lcom/facebook/orca/users/User;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_2

    .line 87
    :catchall_3
    move-exception v3

    :try_start_9
    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    .line 88
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    throw v3

    .line 87
    :cond_3
    invoke-virtual {v0}, Lcom/facebook/orca/users/FacebookUserIterator;->c()V

    .line 88
    invoke-virtual {v2}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 91
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 93
    :try_start_a
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->a:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 96
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->e:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_4

    .line 97
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->e:Landroid/database/sqlite/SQLiteStatement;

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->f:Landroid/database/sqlite/SQLiteStatement;

    if-eqz v0, :cond_5

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->f:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/users/MergeAddressBookHandler;->f:Landroid/database/sqlite/SQLiteStatement;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 105
    :cond_5
    :try_start_b
    invoke-virtual {v1}, Lcom/facebook/orca/debug/Tracer;->c()J

    .line 107
    const-string v0, "MergeAddressBookHandler"

    invoke-static {v0}, Lcom/facebook/orca/debug/Tracer;->b(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_1
.end method
