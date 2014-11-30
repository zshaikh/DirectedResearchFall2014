.class Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;
.super Ljava/lang/Object;
.source "OrcaHttpClientEclair.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method static synthetic a(Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 377
    iget v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;->b:I

    iget-object v1, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/facebook/orca/debug/BLog;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 378
    return-void
.end method

.method private a()Z
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;->a:Ljava/lang/String;

    iget v1, p0, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;->b:I

    invoke-static {v0, v1}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;)Z
    .locals 1

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;->a()Z

    move-result v0

    return v0
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 370
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;)Z
    .locals 1

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/facebook/orca/common/http/OrcaHttpClientEclair$LoggingConfiguration;->b()Z

    move-result v0

    return v0
.end method
