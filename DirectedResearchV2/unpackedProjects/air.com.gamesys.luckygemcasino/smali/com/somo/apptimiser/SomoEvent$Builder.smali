.class public Lcom/somo/apptimiser/SomoEvent$Builder;
.super Ljava/lang/Object;
.source "SomoEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/somo/apptimiser/SomoEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAndroidId:Ljava/lang/String;

.field private mApplicationId:I

.field private mConnection:Ljava/lang/String;

.field private mDeviceId:Ljava/lang/String;

.field private mEventTime:J

.field private mEventType:I

.field private mHandset:Ljava/lang/String;

.field private mInfo:Ljava/lang/String;

.field private mInstallationId:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mOperator:Ljava/lang/String;

.field private mOs:Ljava/lang/String;

.field private mReferrer:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mSourceSite:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mEventType:I

    .line 75
    iput v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mApplicationId:I

    .line 87
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mEventTime:J

    .line 91
    return-void
.end method

.method static synthetic access$100(Lcom/somo/apptimiser/SomoEvent$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 73
    iget v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mEventType:I

    return v0
.end method

.method static synthetic access$1000(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mConnection:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mOperator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mReferrer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/somo/apptimiser/SomoEvent$Builder;)J
    .locals 2
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mEventTime:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mInstallationId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/somo/apptimiser/SomoEvent$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 73
    iget v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mApplicationId:I

    return v0
.end method

.method static synthetic access$300(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mDeviceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mAndroidId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mHandset:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mOs:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mSourceSite:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mInfo:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public androidId(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;
    .locals 0
    .param p1, "a"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mAndroidId:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public applicationId(I)Lcom/somo/apptimiser/SomoEvent$Builder;
    .locals 0
    .param p1, "a"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mApplicationId:I

    .line 106
    return-object p0
.end method

.method public build()Lcom/somo/apptimiser/SomoEvent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 224
    const/4 v0, 0x0

    .line 226
    .local v0, "sSanityCheck":Ljava/lang/String;
    iget v1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mEventType:I

    if-ne v1, v2, :cond_0

    .line 227
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->EVENT_TYPE:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v0

    .line 229
    :cond_0
    if-nez v0, :cond_1

    iget v1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mApplicationId:I

    if-ne v1, v2, :cond_1

    .line 230
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->APPLICATION_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v0

    .line 232
    :cond_1
    if-nez v0, :cond_2

    iget-wide v1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mEventTime:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 233
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->EVENT_TIME:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mInstallationId:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 236
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->INSTALLATION_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v0

    .line 239
    :cond_3
    if-eqz v0, :cond_4

    .line 240
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Member not valid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 242
    :cond_4
    new-instance v1, Lcom/somo/apptimiser/SomoEvent;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/somo/apptimiser/SomoEvent;-><init>(Lcom/somo/apptimiser/SomoEvent$Builder;Lcom/somo/apptimiser/SomoEvent$1;)V

    return-object v1
.end method

.method public connection(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;
    .locals 0
    .param p1, "c"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mConnection:Ljava/lang/String;

    .line 172
    return-object p0
.end method

.method public deviceId(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;
    .locals 0
    .param p1, "d"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mDeviceId:Ljava/lang/String;

    .line 123
    return-object p0
.end method

.method public eventTime(J)Lcom/somo/apptimiser/SomoEvent$Builder;
    .locals 0
    .param p1, "e"    # J

    .prologue
    .line 205
    iput-wide p1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mEventTime:J

    .line 206
    return-object p0
.end method

.method public eventType(I)Lcom/somo/apptimiser/SomoEvent$Builder;
    .locals 0
    .param p1, "e"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mEventType:I

    .line 98
    return-object p0
.end method

.method public handset(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;
    .locals 0
    .param p1, "h"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mHandset:Ljava/lang/String;

    .line 132
    return-object p0
.end method

.method public info(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;
    .locals 0
    .param p1, "i"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mInfo:Ljava/lang/String;

    .line 164
    return-object p0
.end method

.method public installationId(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mInstallationId:Ljava/lang/String;

    .line 214
    return-object p0
.end method

.method public location(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;
    .locals 0
    .param p1, "l"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mLocation:Ljava/lang/String;

    .line 197
    return-object p0
.end method

.method public operator(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;
    .locals 0
    .param p1, "o"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mOperator:Ljava/lang/String;

    .line 180
    return-object p0
.end method

.method public os(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;
    .locals 0
    .param p1, "o"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mOs:Ljava/lang/String;

    .line 140
    return-object p0
.end method

.method public referrer(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;
    .locals 0
    .param p1, "r"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mReferrer:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public source(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mSource:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public sourceSite(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/somo/apptimiser/SomoEvent$Builder;->mSourceSite:Ljava/lang/String;

    .line 156
    return-object p0
.end method
