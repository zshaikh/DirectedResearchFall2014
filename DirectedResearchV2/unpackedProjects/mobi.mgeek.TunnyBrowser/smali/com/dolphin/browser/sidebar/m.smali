.class Lcom/dolphin/browser/sidebar/m;
.super Ljava/lang/Object;
.source "BookmarkView.java"

# interfaces
.implements Lcom/dolphin/browser/sidebar/w;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/sidebar/i;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/sidebar/i;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/dolphin/browser/sidebar/m;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 178
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/m;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v1}, Lcom/dolphin/browser/sidebar/i;->b(Lcom/dolphin/browser/sidebar/i;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/dolphin/browser/bookmark/BookmarkEntranceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    const-string v1, "com.dolphin.browser.action.bookmark.openmenu"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 182
    const-string v1, "com.dolphin.browser.action.bookmark.folderId"

    iget-object v2, p0, Lcom/dolphin/browser/sidebar/m;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v2}, Lcom/dolphin/browser/sidebar/i;->c(Lcom/dolphin/browser/sidebar/i;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 184
    iget-object v1, p0, Lcom/dolphin/browser/sidebar/m;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v1}, Lcom/dolphin/browser/sidebar/i;->b(Lcom/dolphin/browser/sidebar/i;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/dolphin/browser/util/a;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 186
    const-string v0, "bookmark bar"

    const-string v1, "clickbtn"

    const-string v2, "setting"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/m;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v0}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;)Lcom/dolphin/browser/bookmark/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/dolphin/browser/bookmark/j;->f()J

    move-result-wide v0

    .line 193
    iget-object v2, p0, Lcom/dolphin/browser/sidebar/m;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v2, v0, v1}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    const-string v0, "bookmark bar"

    const-string v1, "clickbtn"

    const-string v2, "up"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/dolphin/browser/sidebar/m;->a:Lcom/dolphin/browser/sidebar/i;

    iget-object v1, p0, Lcom/dolphin/browser/sidebar/m;->a:Lcom/dolphin/browser/sidebar/i;

    invoke-static {v1}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;)Lcom/dolphin/browser/bookmark/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/dolphin/browser/bookmark/j;->f()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/dolphin/browser/sidebar/i;->a(Lcom/dolphin/browser/sidebar/i;JZ)V

    goto :goto_0
.end method
