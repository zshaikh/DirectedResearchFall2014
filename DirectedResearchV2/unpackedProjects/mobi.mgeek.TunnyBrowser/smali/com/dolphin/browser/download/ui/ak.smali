.class Lcom/dolphin/browser/download/ui/ak;
.super Landroid/database/ContentObserver;
.source "DownloadActivity.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/DownloadActivity;

.field private final b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/dolphin/browser/download/ui/DownloadActivity;Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 93
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/ak;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 96
    iput-object p2, p0, Lcom/dolphin/browser/download/ui/ak;->b:Landroid/net/Uri;

    .line 97
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 108
    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ak;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/ak;->b:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "status"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 113
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/dolphin/browser/downloads/t;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ak;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-virtual {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/dolphin/browser/download/ui/ak;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v2}, Lcom/dolphin/browser/download/ui/DownloadActivity;->a(Lcom/dolphin/browser/download/ui/DownloadActivity;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 121
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/ak;->a:Lcom/dolphin/browser/download/ui/DownloadActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/DownloadActivity;->c(Lcom/dolphin/browser/download/ui/DownloadActivity;)Landroid/widget/ExpandableListView;

    move-result-object v0

    new-instance v2, Lcom/dolphin/browser/download/ui/al;

    invoke-direct {v2, p0}, Lcom/dolphin/browser/download/ui/al;-><init>(Lcom/dolphin/browser/download/ui/ak;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 134
    :cond_0
    if-eqz v1, :cond_1

    .line 136
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 143
    :cond_1
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 132
    :goto_1
    :try_start_3
    const-string v2, "DownloadedActivity"

    const-string v3, "onChange"

    invoke-static {v2, v3, v0}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 134
    if-eqz v1, :cond_1

    .line 136
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_2
    if-eqz v1, :cond_2

    .line 136
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 139
    :cond_2
    :goto_3
    throw v0

    .line 137
    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    .line 134
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 131
    :catch_4
    move-exception v0

    goto :goto_1
.end method
