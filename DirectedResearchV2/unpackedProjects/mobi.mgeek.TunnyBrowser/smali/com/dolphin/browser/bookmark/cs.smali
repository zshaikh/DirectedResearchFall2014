.class Lcom/dolphin/browser/bookmark/cs;
.super Ljava/lang/Object;
.source "TabSyncActivity.java"

# interfaces
.implements Lcom/dolphin/browser/sync/d;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/TabSyncActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/TabSyncActivity;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/cs;->a:Lcom/dolphin/browser/bookmark/TabSyncActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 266
    const-string v0, "TabSyncActivity"

    const-string v1, "onProgressChanged status: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cs;->a:Lcom/dolphin/browser/bookmark/TabSyncActivity;

    invoke-static {v0, p1}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->a(Lcom/dolphin/browser/bookmark/TabSyncActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/cs;->a:Lcom/dolphin/browser/bookmark/TabSyncActivity;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/TabSyncActivity;->a(Lcom/dolphin/browser/bookmark/TabSyncActivity;)V

    .line 272
    return-void
.end method
