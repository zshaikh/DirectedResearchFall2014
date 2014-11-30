.class Lcom/dolphin/browser/util/k;
.super Ljava/lang/Object;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/dolphin/browser/util/f;

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/dolphin/browser/util/f;[Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dolphin/browser/util/f;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput-object p1, p0, Lcom/dolphin/browser/util/k;->a:Lcom/dolphin/browser/util/f;

    .line 740
    iput-object p2, p0, Lcom/dolphin/browser/util/k;->b:[Ljava/lang/Object;

    .line 741
    return-void
.end method
