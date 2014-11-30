.class public Ldolphin/webkit/WebStorage$Origin;
.super Ljava/lang/Object;
.source "WebStorage.java"


# annotations
.annotation build Ldolphin/webkit/annotation/KeepAll;
.end annotation


# instance fields
.field private mOrigin:Ljava/lang/String;

.field private mQuota:J

.field private mUsage:J


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 69
    iput-wide v1, p0, Ldolphin/webkit/WebStorage$Origin;->mQuota:J

    .line 70
    iput-wide v1, p0, Ldolphin/webkit/WebStorage$Origin;->mUsage:J

    .line 87
    iput-object p1, p0, Ldolphin/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 88
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;J)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 69
    iput-wide v1, p0, Ldolphin/webkit/WebStorage$Origin;->mQuota:J

    .line 70
    iput-wide v1, p0, Ldolphin/webkit/WebStorage$Origin;->mUsage:J

    .line 81
    iput-object p1, p0, Ldolphin/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 82
    iput-wide p2, p0, Ldolphin/webkit/WebStorage$Origin;->mQuota:J

    .line 83
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;JJ)V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Ldolphin/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 69
    iput-wide v1, p0, Ldolphin/webkit/WebStorage$Origin;->mQuota:J

    .line 70
    iput-wide v1, p0, Ldolphin/webkit/WebStorage$Origin;->mUsage:J

    .line 74
    iput-object p1, p0, Ldolphin/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    .line 75
    iput-wide p2, p0, Ldolphin/webkit/WebStorage$Origin;->mQuota:J

    .line 76
    iput-wide p4, p0, Ldolphin/webkit/WebStorage$Origin;->mUsage:J

    .line 77
    return-void
.end method


# virtual methods
.method public getOrigin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Ldolphin/webkit/WebStorage$Origin;->mOrigin:Ljava/lang/String;

    return-object v0
.end method

.method public getQuota()J
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Ldolphin/webkit/WebStorage$Origin;->mQuota:J

    return-wide v0
.end method

.method public getUsage()J
    .locals 2

    .prologue
    .line 122
    iget-wide v0, p0, Ldolphin/webkit/WebStorage$Origin;->mUsage:J

    return-wide v0
.end method
