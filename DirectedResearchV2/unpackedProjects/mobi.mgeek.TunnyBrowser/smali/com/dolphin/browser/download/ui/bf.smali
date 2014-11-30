.class Lcom/dolphin/browser/download/ui/bf;
.super Ljava/lang/Object;
.source "FileManageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/download/ui/FileManageActivity;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/download/ui/FileManageActivity;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/dolphin/browser/download/ui/bf;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 142
    sget-object v0, Lcom/dolphin/browser/download/ui/an;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bf;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-static {v1}, Lcom/dolphin/browser/download/ui/FileManageActivity;->a(Lcom/dolphin/browser/download/ui/FileManageActivity;)Ljava/io/File;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 159
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-static {}, Lcom/dolphin/browser/download/e;->a()Lcom/dolphin/browser/download/e;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bf;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-static {v1}, Lcom/dolphin/browser/download/ui/FileManageActivity;->a(Lcom/dolphin/browser/download/ui/FileManageActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dolphin/browser/download/e;->a(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bf;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    sget-object v1, Lcom/dolphin/browser/download/ui/an;->a:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/dolphin/browser/download/ui/FileManageActivity;->a(Lcom/dolphin/browser/download/ui/FileManageActivity;Ljava/io/File;)V

    .line 154
    :goto_1
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bf;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->b(Lcom/dolphin/browser/download/ui/FileManageActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bf;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->c(Lcom/dolphin/browser/download/ui/FileManageActivity;)Landroid/view/CustomMenuListView;

    move-result-object v1

    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bf;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-static {v0}, Lcom/dolphin/browser/download/ui/FileManageActivity;->b(Lcom/dolphin/browser/download/ui/FileManageActivity;)Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/CustomMenuListView;->setSelection(I)V

    .line 157
    :cond_1
    const-string v0, "download management"

    const-string v1, "filemanager"

    const-string v2, "up"

    invoke-static {v0, v1, v2}, Lcom/dolphin/browser/util/Tracker$DefaultTracker;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/dolphin/browser/download/ui/bf;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    iget-object v1, p0, Lcom/dolphin/browser/download/ui/bf;->a:Lcom/dolphin/browser/download/ui/FileManageActivity;

    invoke-static {v1}, Lcom/dolphin/browser/download/ui/FileManageActivity;->a(Lcom/dolphin/browser/download/ui/FileManageActivity;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/dolphin/browser/download/ui/FileManageActivity;->a(Lcom/dolphin/browser/download/ui/FileManageActivity;Ljava/io/File;)V

    goto :goto_1
.end method
