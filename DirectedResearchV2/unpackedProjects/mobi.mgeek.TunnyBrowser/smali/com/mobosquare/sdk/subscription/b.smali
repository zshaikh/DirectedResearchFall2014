.class Lcom/mobosquare/sdk/subscription/b;
.super Landroid/os/AsyncTask;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/mobosquare/sdk/subscription/a;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/mobosquare/sdk/subscription/a;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mobosquare/sdk/subscription/b;->a:Lcom/mobosquare/sdk/subscription/a;

    .line 109
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 110
    iput-object p2, p0, Lcom/mobosquare/sdk/subscription/b;->b:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/mobosquare/sdk/subscription/b;->c:Ljava/lang/String;

    .line 112
    iput-object p4, p0, Lcom/mobosquare/sdk/subscription/b;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 119
    invoke-static {}, Lcom/mobosquare/sdk/subscription/b/a/a;->e()Lcom/mobosquare/sdk/subscription/b/a/a;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/mobosquare/sdk/subscription/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/mobosquare/sdk/subscription/b;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/mobosquare/sdk/subscription/b;->a:Lcom/mobosquare/sdk/subscription/a;

    iget-object v4, p0, Lcom/mobosquare/sdk/subscription/b;->a:Lcom/mobosquare/sdk/subscription/a;

    invoke-static {v4}, Lcom/mobosquare/sdk/subscription/a;->a(Lcom/mobosquare/sdk/subscription/a;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mobosquare/sdk/subscription/a;->a(Lcom/mobosquare/sdk/subscription/a;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mobosquare/sdk/subscription/b;->d:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mobosquare/sdk/subscription/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/b;->a:Lcom/mobosquare/sdk/subscription/a;

    invoke-static {v0}, Lcom/mobosquare/sdk/subscription/a;->b(Lcom/mobosquare/sdk/subscription/a;)Lcom/mobosquare/sdk/subscription/c;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/mobosquare/sdk/subscription/c;->a(Z)V

    .line 140
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/b;->a:Lcom/mobosquare/sdk/subscription/a;

    invoke-static {v0}, Lcom/mobosquare/sdk/subscription/a;->c(Lcom/mobosquare/sdk/subscription/a;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 142
    const-string v1, "subscription_email"

    iget-object v2, p0, Lcom/mobosquare/sdk/subscription/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    const-string v1, "subscribe"

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 144
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mobosquare/sdk/subscription/b;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/b;->a:Lcom/mobosquare/sdk/subscription/a;

    invoke-static {v0}, Lcom/mobosquare/sdk/subscription/a;->b(Lcom/mobosquare/sdk/subscription/a;)Lcom/mobosquare/sdk/subscription/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/b;->a:Lcom/mobosquare/sdk/subscription/a;

    invoke-static {v0}, Lcom/mobosquare/sdk/subscription/a;->b(Lcom/mobosquare/sdk/subscription/a;)Lcom/mobosquare/sdk/subscription/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobosquare/sdk/subscription/c;->a()V

    .line 131
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 132
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/mobosquare/sdk/subscription/b;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/b;->a:Lcom/mobosquare/sdk/subscription/a;

    invoke-static {v0}, Lcom/mobosquare/sdk/subscription/a;->b(Lcom/mobosquare/sdk/subscription/a;)Lcom/mobosquare/sdk/subscription/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/mobosquare/sdk/subscription/b;->a:Lcom/mobosquare/sdk/subscription/a;

    invoke-static {v0}, Lcom/mobosquare/sdk/subscription/a;->b(Lcom/mobosquare/sdk/subscription/a;)Lcom/mobosquare/sdk/subscription/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/mobosquare/sdk/subscription/c;->b()V

    .line 157
    :cond_0
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 158
    return-void
.end method
