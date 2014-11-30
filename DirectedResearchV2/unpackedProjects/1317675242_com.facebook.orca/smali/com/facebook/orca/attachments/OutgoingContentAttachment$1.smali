.class Lcom/facebook/orca/attachments/OutgoingContentAttachment$1;
.super Ljava/lang/Object;
.source "OutgoingContentAttachment.java"

# interfaces
.implements Lcom/google/common/io/InputSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/InputSupplier",
        "<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/orca/attachments/OutgoingContentAttachment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/attachments/OutgoingContentAttachment;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/facebook/orca/attachments/OutgoingContentAttachment$1;->a:Lcom/facebook/orca/attachments/OutgoingContentAttachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/facebook/orca/attachments/OutgoingContentAttachment$1;->a:Lcom/facebook/orca/attachments/OutgoingContentAttachment;

    invoke-virtual {v0}, Lcom/facebook/orca/attachments/OutgoingContentAttachment;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/facebook/orca/attachments/OutgoingContentAttachment$1;->a()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
