.class Lcom/dolphin/browser/bookmark/bf;
.super Ljava/lang/Object;
.source "BookmarkMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/bookmark/be;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/bookmark/be;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/dolphin/browser/bookmark/bf;->a:Lcom/dolphin/browser/bookmark/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 222
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bf;->a:Lcom/dolphin/browser/bookmark/be;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/be;->a(Lcom/dolphin/browser/bookmark/be;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/bookmark/bf;->a:Lcom/dolphin/browser/bookmark/be;

    invoke-static {v1}, Lcom/dolphin/browser/bookmark/be;->b(Lcom/dolphin/browser/bookmark/be;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/provider/Browser;->c(Landroid/content/ContentResolver;J)I

    .line 225
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bf;->a:Lcom/dolphin/browser/bookmark/be;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/be;->b(Lcom/dolphin/browser/bookmark/be;)J

    move-result-wide v0

    const-wide/16 v2, -0xa

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 226
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    const-string v1, "chrome_sync_version"

    invoke-virtual {v0, v1, v4, v5}, Lcom/dolphin/browser/sync/s;->b(Ljava/lang/String;J)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/bookmark/bf;->a:Lcom/dolphin/browser/bookmark/be;

    invoke-static {v0}, Lcom/dolphin/browser/bookmark/be;->b(Lcom/dolphin/browser/bookmark/be;)J

    move-result-wide v0

    const-wide/16 v2, -0xb

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 233
    invoke-static {}, Lcom/dolphin/browser/sync/s;->s()Lcom/dolphin/browser/sync/s;

    move-result-object v0

    const-string v1, "firefox_sync_version"

    invoke-virtual {v0, v1, v4, v5}, Lcom/dolphin/browser/sync/s;->b(Ljava/lang/String;J)V

    .line 239
    :cond_1
    return-void
.end method
