.class public Lcom/facebook/orca/attachments/OutgoingFileAttachment;
.super Lcom/facebook/orca/attachments/MediaAttachment;
.source "OutgoingFileAttachment.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/orca/attachments/MediaResource;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/facebook/orca/attachments/MediaAttachment;-><init>(Landroid/content/Context;Lcom/facebook/orca/attachments/MediaResource;)V

    .line 25
    const-string v0, "file"

    invoke-virtual {p2}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/OutgoingFileAttachment;->d()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Lcom/google/common/io/InputSupplier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/facebook/orca/attachments/OutgoingFileAttachment;->d()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/attachments/MediaResource;->b()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/common/io/Files;->a(Ljava/io/File;)Lcom/google/common/io/InputSupplier;

    move-result-object v0

    return-object v0
.end method
