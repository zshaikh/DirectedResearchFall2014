.class public Lcom/dolphin/browser/sync/t;
.super Lcom/dolphin/browser/sync/k;
.source "BookmarkSynchronizer.java"


# instance fields
.field private a:Lcom/dolphin/browser/sync/a;

.field private f:Lcom/dolphin/browser/sync/a;

.field private g:Lcom/dolphin/browser/sync/a;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/sync/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Lcom/dolphin/browser/sync/a;

    invoke-direct {v0, p1, p2, p3}, Lcom/dolphin/browser/sync/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    .line 23
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/Account/p;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->a(Lcom/dolphin/browser/DolphinService/Account/p;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->a(Lcom/dolphin/browser/DolphinService/Account/p;)V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->a(Lcom/dolphin/browser/DolphinService/Account/p;)V

    .line 54
    :cond_2
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/sync/a;->a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/sync/a;->a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/sync/a;->a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    :cond_2
    return-void
.end method

.method public a(Lcom/dolphin/browser/sync/b;)V
    .locals 1

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/dolphin/browser/sync/k;->a(Lcom/dolphin/browser/sync/b;)V

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->a(Lcom/dolphin/browser/sync/b;)V

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->a(Lcom/dolphin/browser/sync/b;)V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->a(Lcom/dolphin/browser/sync/b;)V

    .line 164
    :cond_2
    return-void
.end method

.method public a(Lcom/dolphin/browser/sync/o;)V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/dolphin/browser/sync/k;->a(Lcom/dolphin/browser/sync/o;)V

    .line 140
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->a(Lcom/dolphin/browser/sync/o;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->a(Lcom/dolphin/browser/sync/o;)V

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->a(Lcom/dolphin/browser/sync/o;)V

    .line 149
    :cond_2
    return-void
.end method

.method public a(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method b()V
    .locals 4

    .prologue
    .line 26
    invoke-static {}, Lcom/dolphin/browser/sync/ai;->a()Lcom/dolphin/browser/sync/ai;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/sync/ai;->b(I)Lcom/dolphin/browser/sync/ah;

    move-result-object v0

    .line 28
    invoke-interface {v0}, Lcom/dolphin/browser/sync/ah;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    new-instance v0, Lcom/dolphin/browser/sync/u;

    iget-object v1, p0, Lcom/dolphin/browser/sync/t;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/sync/t;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/sync/t;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/sync/u;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    .line 30
    new-instance v0, Lcom/dolphin/browser/sync/y;

    iget-object v1, p0, Lcom/dolphin/browser/sync/t;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/dolphin/browser/sync/t;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/dolphin/browser/sync/t;->i:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/dolphin/browser/sync/y;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    .line 32
    :cond_0
    return-void
.end method

.method public b(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/sync/a;->b(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/sync/a;->b(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_2

    .line 65
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/sync/a;->b(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 67
    :cond_2
    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_2

    .line 193
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->b(Landroid/database/sqlite/SQLiteDatabase;)Z

    .line 195
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/t;->b()V

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/a;->c()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/a;->c()V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/a;->c()V

    .line 134
    :cond_2
    return-void
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 94
    :cond_2
    return-void
.end method

.method public f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 107
    :cond_2
    return-void
.end method

.method public g(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->a:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->f:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/dolphin/browser/sync/t;->g:Lcom/dolphin/browser/sync/a;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/a;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 120
    :cond_2
    return-void
.end method

.method public m()Lcom/dolphin/browser/sync/n;
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/dolphin/browser/sync/k;->m()Lcom/dolphin/browser/sync/n;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/t;->b()V

    .line 38
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/t;->f()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v1

    .line 39
    invoke-virtual {p0, v1}, Lcom/dolphin/browser/sync/t;->a(Lcom/dolphin/browser/DolphinService/Account/p;)V

    .line 40
    return-object v0
.end method
