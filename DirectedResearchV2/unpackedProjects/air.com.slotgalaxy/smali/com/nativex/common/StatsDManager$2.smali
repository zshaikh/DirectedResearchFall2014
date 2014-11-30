.class final Lcom/nativex/common/StatsDManager$2;
.super Ljava/lang/Object;
.source "StatsDManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/common/StatsDManager;->recordTime(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$recordTime:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/nativex/common/StatsDManager$2;->val$key:Ljava/lang/String;

    iput p2, p0, Lcom/nativex/common/StatsDManager$2;->val$recordTime:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/nativex/common/StatsDManager$2;->val$key:Ljava/lang/String;

    iget v1, p0, Lcom/nativex/common/StatsDManager$2;->val$recordTime:I

    # invokes: Lcom/nativex/common/StatsDManager;->recordTimeAsync(Ljava/lang/String;I)V
    invoke-static {v0, v1}, Lcom/nativex/common/StatsDManager;->access$000(Ljava/lang/String;I)V

    .line 98
    return-void
.end method
