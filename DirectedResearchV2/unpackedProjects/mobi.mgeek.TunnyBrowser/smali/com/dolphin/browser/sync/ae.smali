.class public Lcom/dolphin/browser/sync/ae;
.super Lcom/dolphin/browser/sync/k;
.source "MixedSynchronizer.java"


# instance fields
.field private a:Lcom/dolphin/browser/sync/au;

.field private f:Lcom/dolphin/browser/sync/ac;

.field private g:Lcom/dolphin/browser/sync/t;

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/dolphin/browser/sync/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iput-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->h:Z

    .line 21
    iput-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->i:Z

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->j:Z

    .line 54
    new-instance v0, Lcom/dolphin/browser/sync/au;

    invoke-direct {v0, p1, p2, p3}, Lcom/dolphin/browser/sync/au;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/sync/ae;->a:Lcom/dolphin/browser/sync/au;

    .line 55
    new-instance v0, Lcom/dolphin/browser/sync/ac;

    invoke-direct {v0, p1, p2, p3}, Lcom/dolphin/browser/sync/ac;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/sync/ae;->f:Lcom/dolphin/browser/sync/ac;

    .line 56
    new-instance v0, Lcom/dolphin/browser/sync/t;

    invoke-direct {v0, p1, p2, p3}, Lcom/dolphin/browser/sync/t;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dolphin/browser/sync/ae;->g:Lcom/dolphin/browser/sync/t;

    .line 58
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    return v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->h:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->a:Lcom/dolphin/browser/sync/au;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/sync/au;->a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 95
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->i:Z

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->f:Lcom/dolphin/browser/sync/ac;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/sync/ac;->a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 98
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->j:Z

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->g:Lcom/dolphin/browser/sync/t;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/dolphin/browser/sync/t;->a(Lcom/dolphin/browser/DolphinService/WebService/g;Ljava/lang/String;Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 104
    :cond_2
    return-void
.end method

.method public a(Lcom/dolphin/browser/sync/b;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->a:Lcom/dolphin/browser/sync/au;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/au;->a(Lcom/dolphin/browser/sync/b;)V

    .line 166
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->f:Lcom/dolphin/browser/sync/ac;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/ac;->a(Lcom/dolphin/browser/sync/b;)V

    .line 167
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->g:Lcom/dolphin/browser/sync/t;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/t;->a(Lcom/dolphin/browser/sync/b;)V

    .line 169
    invoke-super {p0, p1}, Lcom/dolphin/browser/sync/k;->a(Lcom/dolphin/browser/sync/b;)V

    .line 170
    return-void
.end method

.method public a(Lcom/dolphin/browser/sync/o;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->a:Lcom/dolphin/browser/sync/au;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/au;->a(Lcom/dolphin/browser/sync/o;)V

    .line 157
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->f:Lcom/dolphin/browser/sync/ac;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/ac;->a(Lcom/dolphin/browser/sync/o;)V

    .line 158
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->g:Lcom/dolphin/browser/sync/t;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/t;->a(Lcom/dolphin/browser/sync/o;)V

    .line 160
    invoke-super {p0, p1}, Lcom/dolphin/browser/sync/k;->a(Lcom/dolphin/browser/sync/o;)V

    .line 161
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/dolphin/browser/sync/ar;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->a:Lcom/dolphin/browser/sync/au;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/au;->a(Ljava/util/List;)V

    .line 28
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/dolphin/browser/sync/ae;->h:Z

    .line 32
    return-void
.end method

.method public a(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x1

    return v0
.end method

.method public b(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->h:Z

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->a:Lcom/dolphin/browser/sync/au;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/sync/au;->b(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->i:Z

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->f:Lcom/dolphin/browser/sync/ac;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/sync/ac;->b(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 81
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->j:Z

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->g:Lcom/dolphin/browser/sync/t;

    invoke-virtual {v0, p1, p2}, Lcom/dolphin/browser/sync/t;->b(Lorg/json/JSONObject;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 87
    :cond_2
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/dolphin/browser/sync/ae;->i:Z

    .line 36
    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 175
    return-void
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public c(Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/dolphin/browser/sync/ae;->j:Z

    .line 40
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public e(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->h:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->a:Lcom/dolphin/browser/sync/au;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/au;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->i:Z

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->f:Lcom/dolphin/browser/sync/ac;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/ac;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 114
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->j:Z

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->g:Lcom/dolphin/browser/sync/t;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/t;->e(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 120
    :cond_2
    return-void
.end method

.method public f(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->h:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->a:Lcom/dolphin/browser/sync/au;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/au;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->i:Z

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->f:Lcom/dolphin/browser/sync/ac;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/ac;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 130
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->j:Z

    if-eqz v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->g:Lcom/dolphin/browser/sync/t;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/t;->f(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 136
    :cond_2
    return-void
.end method

.method public g(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->h:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->a:Lcom/dolphin/browser/sync/au;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/au;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 143
    :cond_0
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->i:Z

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->f:Lcom/dolphin/browser/sync/ac;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/ac;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 146
    :cond_1
    iget-boolean v0, p0, Lcom/dolphin/browser/sync/ae;->j:Z

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/dolphin/browser/sync/ae;->g:Lcom/dolphin/browser/sync/t;

    invoke-virtual {v0, p1}, Lcom/dolphin/browser/sync/t;->g(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 152
    :cond_2
    return-void
.end method

.method public m()Lcom/dolphin/browser/sync/n;
    .locals 3

    .prologue
    .line 62
    invoke-super {p0}, Lcom/dolphin/browser/sync/k;->m()Lcom/dolphin/browser/sync/n;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/dolphin/browser/sync/ae;->f()Lcom/dolphin/browser/DolphinService/Account/p;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/dolphin/browser/sync/ae;->a:Lcom/dolphin/browser/sync/au;

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/sync/au;->a(Lcom/dolphin/browser/DolphinService/Account/p;)V

    .line 65
    iget-object v2, p0, Lcom/dolphin/browser/sync/ae;->f:Lcom/dolphin/browser/sync/ac;

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/sync/ac;->a(Lcom/dolphin/browser/DolphinService/Account/p;)V

    .line 66
    iget-object v2, p0, Lcom/dolphin/browser/sync/ae;->g:Lcom/dolphin/browser/sync/t;

    invoke-virtual {v2}, Lcom/dolphin/browser/sync/t;->b()V

    .line 67
    iget-object v2, p0, Lcom/dolphin/browser/sync/ae;->g:Lcom/dolphin/browser/sync/t;

    invoke-virtual {v2, v1}, Lcom/dolphin/browser/sync/t;->a(Lcom/dolphin/browser/DolphinService/Account/p;)V

    .line 70
    return-object v0
.end method
