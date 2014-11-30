.class Lcom/dolphin/browser/push/u;
.super Ljava/lang/Object;
.source "PushManager.java"

# interfaces
.implements Lcom/dolphin/browser/DolphinService/Account/l;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/push/t;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/push/t;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->c()Z

    .line 170
    iget-object v0, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    invoke-static {v0}, Lcom/dolphin/browser/push/t;->e(Lcom/dolphin/browser/push/t;)Lcom/dolphin/browser/push/i;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    invoke-static {v1}, Lcom/dolphin/browser/push/t;->c(Lcom/dolphin/browser/push/t;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/push/i;->a(Ljava/lang/String;)V

    .line 171
    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/DolphinService/Account/a;)V
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p1}, Lcom/dolphin/browser/DolphinService/Account/a;->i()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/dolphin/browser/push/u;->a(Z)V

    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    invoke-static {v0}, Lcom/dolphin/browser/push/t;->d(Lcom/dolphin/browser/push/t;)V

    .line 186
    invoke-direct {p0}, Lcom/dolphin/browser/push/u;->a()V

    .line 187
    return-void

    .line 184
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/DolphinService/Account/a;Z)V
    .locals 4

    .prologue
    .line 152
    invoke-virtual {p0, p2}, Lcom/dolphin/browser/push/u;->a(Z)V

    .line 154
    iget-object v0, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    invoke-static {v0}, Lcom/dolphin/browser/push/t;->a(Lcom/dolphin/browser/push/t;)Z

    move-result v0

    .line 155
    iget-object v1, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    invoke-static {v1}, Lcom/dolphin/browser/push/t;->b(Lcom/dolphin/browser/push/t;)Ljava/lang/String;

    move-result-object v1

    .line 156
    iget-object v2, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    invoke-static {v2}, Lcom/dolphin/browser/push/t;->c(Lcom/dolphin/browser/push/t;)Ljava/lang/String;

    move-result-object v2

    .line 157
    iget-object v3, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    invoke-static {v3}, Lcom/dolphin/browser/push/t;->d(Lcom/dolphin/browser/push/t;)V

    .line 158
    iget-object v3, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    invoke-static {v3}, Lcom/dolphin/browser/push/t;->a(Lcom/dolphin/browser/push/t;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/dolphin/browser/push/u;->a()V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v3, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    invoke-virtual {v3}, Lcom/dolphin/browser/push/t;->d()Z

    .line 162
    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    invoke-static {v0, v2, v1}, Lcom/dolphin/browser/push/t;->a(Lcom/dolphin/browser/push/t;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 192
    invoke-static {}, Lcom/dolphin/browser/sync/ad;->s()Lcom/dolphin/browser/sync/ad;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ad;->l()V

    .line 193
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->l()V

    .line 194
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->m()V

    .line 195
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ab;->l()V

    .line 196
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ab;->m()V

    .line 197
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->l()V

    .line 199
    iget-object v0, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    invoke-virtual {v0}, Lcom/dolphin/browser/push/t;->d()Z

    .line 200
    iget-object v0, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    iget-object v1, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    invoke-static {v1}, Lcom/dolphin/browser/push/t;->c(Lcom/dolphin/browser/push/t;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/dolphin/browser/push/u;->a:Lcom/dolphin/browser/push/t;

    invoke-static {v2}, Lcom/dolphin/browser/push/t;->b(Lcom/dolphin/browser/push/t;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/push/t;->a(Lcom/dolphin/browser/push/t;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method protected a(Z)V
    .locals 1

    .prologue
    .line 175
    if-eqz p1, :cond_0

    .line 176
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/s;->m()V

    .line 178
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/sync/at;->t()Lcom/dolphin/browser/sync/at;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/at;->m()V

    .line 179
    invoke-static {}, Lcom/dolphin/browser/sync/ab;->s()Lcom/dolphin/browser/sync/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/sync/ab;->m()V

    .line 180
    return-void
.end method
