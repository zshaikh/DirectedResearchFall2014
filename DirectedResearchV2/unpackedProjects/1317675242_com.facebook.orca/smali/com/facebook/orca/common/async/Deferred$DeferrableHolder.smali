.class Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;
.super Ljava/lang/Object;
.source "Deferred.java"


# instance fields
.field final synthetic a:Lcom/facebook/orca/common/async/Deferred;

.field private final b:Lcom/facebook/orca/common/async/Deferrable;

.field private final c:Lcom/facebook/orca/common/async/Deferrable;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/async/Deferred;Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;->a:Lcom/facebook/orca/common/async/Deferred;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p2, p0, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;->b:Lcom/facebook/orca/common/async/Deferrable;

    .line 25
    iput-object p3, p0, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;->c:Lcom/facebook/orca/common/async/Deferrable;

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/async/Deferred;Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferred$1;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;-><init>(Lcom/facebook/orca/common/async/Deferred;Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;)Lcom/facebook/orca/common/async/Deferrable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;->c:Lcom/facebook/orca/common/async/Deferrable;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;)Lcom/facebook/orca/common/async/Deferrable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;->b:Lcom/facebook/orca/common/async/Deferrable;

    return-object v0
.end method
