.class public Lcom/facebook/orca/server/FetchThreadParamsBuilder;
.super Ljava/lang/Object;
.source "FetchThreadParamsBuilder.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/facebook/orca/server/DataFreshnessParam;

.field private d:J

.field private e:Z

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const-wide/16 v1, -0x1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide v1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->d:J

    .line 17
    const/16 v0, 0x32

    iput v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->f:I

    .line 18
    iput-wide v1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g:J

    return-void
.end method


# virtual methods
.method public a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 0

    .prologue
    .line 71
    iput p1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->f:I

    .line 72
    return-object p0
.end method

.method public a(J)Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 0

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->d:J

    .line 63
    return-object p0
.end method

.method public a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->c:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 45
    return-object p0
.end method

.method public a(Lcom/facebook/orca/server/FetchThreadParams;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 2

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a:Ljava/lang/String;

    .line 22
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->c()Lcom/facebook/orca/server/DataFreshnessParam;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->c:Lcom/facebook/orca/server/DataFreshnessParam;

    .line 24
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->e:Z

    .line 25
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->d:J

    .line 26
    invoke-virtual {p1}, Lcom/facebook/orca/server/FetchThreadParams;->f()I

    move-result v0

    iput v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->f:I

    .line 27
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a:Ljava/lang/String;

    .line 36
    return-object p0
.end method

.method public a(Z)Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 0

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->e:Z

    .line 54
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/facebook/orca/server/DataFreshnessParam;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->c:Lcom/facebook/orca/server/DataFreshnessParam;

    return-object v0
.end method

.method public b(J)Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 0

    .prologue
    .line 80
    iput-wide p1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g:J

    .line 81
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->b:Ljava/lang/String;

    .line 90
    return-object p0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->e:Z

    return v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->d:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->f:I

    return v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g:J

    return-wide v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/facebook/orca/server/FetchThreadParams;
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParams;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/FetchThreadParams;-><init>(Lcom/facebook/orca/server/FetchThreadParamsBuilder;)V

    return-object v0
.end method
