.class Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;
.super Ljava/lang/Object;
.source "ThreadViewMessageFragmentTab.java"


# instance fields
.field private a:Z

.field private b:J

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;->b:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$1;)V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0}, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;I)I
    .locals 0

    .prologue
    .line 464
    iput p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;->c:I

    return p1
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;J)J
    .locals 0

    .prologue
    .line 464
    iput-wide p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;)Z
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;->a:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;Z)Z
    .locals 0

    .prologue
    .line 464
    iput-boolean p1, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;)J
    .locals 2

    .prologue
    .line 464
    iget-wide v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;)I
    .locals 1

    .prologue
    .line 464
    iget v0, p0, Lcom/facebook/orca/threadview/ThreadViewMessageFragmentTab$SyncState;->c:I

    return v0
.end method
