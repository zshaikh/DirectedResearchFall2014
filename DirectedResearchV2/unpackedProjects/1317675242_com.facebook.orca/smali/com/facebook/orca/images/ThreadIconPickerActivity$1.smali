.class Lcom/facebook/orca/images/ThreadIconPickerActivity$1;
.super Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;
.source "ThreadIconPickerActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/images/ThreadIconPickerActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/images/ThreadIconPickerActivity;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity$1;->a:Lcom/facebook/orca/images/ThreadIconPickerActivity;

    invoke-direct {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$OnMediaPickedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity$1;->a:Lcom/facebook/orca/images/ThreadIconPickerActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->finish()V

    .line 70
    return-void
.end method

.method public a(Lcom/facebook/orca/attachments/MediaResource;)V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity$1;->a:Lcom/facebook/orca/images/ThreadIconPickerActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->a(Lcom/facebook/orca/images/ThreadIconPickerActivity;Z)Z

    .line 64
    iget-object v1, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity$1;->a:Lcom/facebook/orca/images/ThreadIconPickerActivity;

    invoke-static {v1, v0}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->a(Lcom/facebook/orca/images/ThreadIconPickerActivity;Ljava/io/File;)V

    .line 65
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/images/ThreadIconPickerActivity$1;->a:Lcom/facebook/orca/images/ThreadIconPickerActivity;

    invoke-virtual {v0}, Lcom/facebook/orca/images/ThreadIconPickerActivity;->finish()V

    .line 75
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 79
    return-void
.end method
