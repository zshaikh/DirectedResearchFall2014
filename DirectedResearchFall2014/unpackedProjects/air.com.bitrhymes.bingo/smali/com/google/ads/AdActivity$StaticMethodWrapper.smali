.class public Lcom/google/ads/AdActivity$StaticMethodWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/AdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticMethodWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isShowing()Z
    .locals 2

    .prologue
    .line 141
    invoke-static {}, Lcom/google/ads/AdActivity;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-static {}, Lcom/google/ads/AdActivity;->b()Lcom/google/ads/AdActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public launchAdActivity(Lcom/google/ads/internal/d;Lcom/google/ads/internal/e;)V
    .locals 3
    .parameter "adManager"
    .parameter "adOpener"

    .prologue
    .line 163
    invoke-static {}, Lcom/google/ads/AdActivity;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 164
    :try_start_0
    invoke-static {}, Lcom/google/ads/AdActivity;->d()Lcom/google/ads/internal/d;

    move-result-object v1

    if-nez v1, :cond_1

    .line 165
    invoke-static {p1}, Lcom/google/ads/AdActivity;->b(Lcom/google/ads/internal/d;)Lcom/google/ads/internal/d;

    .line 170
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {p1}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->c:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    .line 174
    if-nez p0, :cond_2

    .line 175
    const-string v0, "activity was null while launching an AdActivity."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 166
    .restart local p0
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/ads/AdActivity;->d()Lcom/google/ads/internal/d;

    move-result-object v1

    if-eq v1, p1, :cond_0

    .line 167
    const-string v1, "Tried to launch a new AdActivity with a different AdManager."

    invoke-static {v1}, Lcom/google/ads/util/b;->b(Ljava/lang/String;)V

    .line 168
    monitor-exit v0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 178
    .end local p0
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/ads/AdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    const-string v1, "com.google.ads.AdOpener"

    invoke-virtual {p2}, Lcom/google/ads/internal/e;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 184
    :try_start_2
    const-string v1, "Launching AdActivity."

    invoke-static {v1}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    const-string v1, "Activity not found."

    invoke-static {v1, v0}, Lcom/google/ads/util/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public leftApplication()Z
    .locals 2

    .prologue
    .line 150
    invoke-static {}, Lcom/google/ads/AdActivity;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-static {}, Lcom/google/ads/AdActivity;->c()Lcom/google/ads/AdActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
