.class Lcom/google/inject/internal/MapMaker$QueueHolder;
.super Ljava/lang/Object;
.source "MapMaker.java"


# static fields
.field static final queue:Lcom/google/inject/internal/FinalizableReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 787
    new-instance v0, Lcom/google/inject/internal/FinalizableReferenceQueue;

    invoke-direct {v0}, Lcom/google/inject/internal/FinalizableReferenceQueue;-><init>()V

    sput-object v0, Lcom/google/inject/internal/MapMaker$QueueHolder;->queue:Lcom/google/inject/internal/FinalizableReferenceQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
