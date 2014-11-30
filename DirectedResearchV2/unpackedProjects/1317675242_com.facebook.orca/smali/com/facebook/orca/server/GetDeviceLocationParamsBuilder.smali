.class public Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;
.super Ljava/lang/Object;
.source "GetDeviceLocationParamsBuilder.java"


# instance fields
.field private a:J

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->a:J

    .line 13
    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->b:I

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->a:J

    return-wide v0
.end method

.method public a(I)Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->b:I

    .line 31
    return-object p0
.end method

.method public a(J)Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;
    .locals 0

    .prologue
    .line 21
    iput-wide p1, p0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->a:J

    .line 22
    return-object p0
.end method

.method public a(Z)Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->c:Z

    .line 40
    return-object p0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->b:I

    return v0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;->c:Z

    return v0
.end method

.method public d()Lcom/facebook/orca/server/GetDeviceLocationParams;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/facebook/orca/server/GetDeviceLocationParams;

    invoke-direct {v0, p0}, Lcom/facebook/orca/server/GetDeviceLocationParams;-><init>(Lcom/facebook/orca/server/GetDeviceLocationParamsBuilder;)V

    return-object v0
.end method
