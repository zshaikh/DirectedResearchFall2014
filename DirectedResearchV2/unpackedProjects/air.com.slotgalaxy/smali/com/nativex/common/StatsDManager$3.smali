.class final Lcom/nativex/common/StatsDManager$3;
.super Ljava/lang/Object;
.source "StatsDManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nativex/common/StatsDManager;->incrementCounter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/nativex/common/StatsDManager$3;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nativex/common/StatsDManager$3;->val$key:Ljava/lang/String;

    # invokes: Lcom/nativex/common/StatsDManager;->incrementCounterAsync(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/nativex/common/StatsDManager;->access$100(Ljava/lang/String;)V

    .line 144
    return-void
.end method
