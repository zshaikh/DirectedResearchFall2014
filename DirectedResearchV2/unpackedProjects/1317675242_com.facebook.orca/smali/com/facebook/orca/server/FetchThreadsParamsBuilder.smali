.class public Lcom/facebook/orca/server/FetchThreadsParamsBuilder;
.super Ljava/lang/Object;
.source "FetchThreadsParamsBuilder.java"


# instance fields
.field private a:Lcom/facebook/orca/server/DataFreshnessParam;

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->b:J

    .line 13
    const/16 v0, 0x14

    iput v0, p0, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->c:I

    return-void
.end method


# virtual methods
.method public a()Lcom/facebook/orca/server/DataFreshnessParam;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->a:Lcom/facebook/orca/server/DataFreshnessParam;

    return-object v0
.end method

.method public a(J)Lcom/facebook/orca/server/FetchThreadsParamsBuilder;
    .locals 0

    .prologue
    .line 29
    iput-wide p1, p0, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->b:J

    .line 30
    return-object p0
.end method

.method public a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadsParamsBuilder;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->a:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 21
    return-object p0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->b:J

    return-wide v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/facebook/orca/server/FetchThreadsParamsBuilder;->c:I

    return v0
.end method

.method public d()Lcom/facebook/orca/server/FetchThreadsParams;
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/facebook/orca/server/FetchThreadsParams;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/FetchThreadsParams;-><init>(Lcom/facebook/orca/server/FetchThreadsParamsBuilder;)V

    return-object v0
.end method
