.class Lcom/facebook/orca/photos/picking/PickMediaOperation$2;
.super Ljava/lang/Object;
.source "PickMediaOperation.java"

# interfaces
.implements Lcom/google/common/io/OutputSupplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/io/OutputSupplier",
        "<",
        "Ljava/io/OutputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/facebook/orca/photos/picking/PickMediaOperation;


# direct methods
.method constructor <init>(Lcom/facebook/orca/photos/picking/PickMediaOperation;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$2;->b:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    iput-object p2, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/OutputStream;
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$2;->b:Lcom/facebook/orca/photos/picking/PickMediaOperation;

    invoke-virtual {v0}, Lcom/facebook/orca/photos/picking/PickMediaOperation;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/photos/picking/PickMediaOperation$2;->a:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/facebook/orca/photos/picking/PickMediaOperation$2;->a()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
