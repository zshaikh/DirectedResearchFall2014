.class public Lcom/somo/apptimiser/SomoEvent;
.super Ljava/lang/Object;
.source "SomoEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/somo/apptimiser/SomoEvent$1;,
        Lcom/somo/apptimiser/SomoEvent$Builder;,
        Lcom/somo/apptimiser/SomoEvent$EventFields;
    }
.end annotation


# static fields
.field static final PLATFORM:Ljava/lang/String; = "Android"


# instance fields
.field private final mAndroidId:Ljava/lang/String;

.field private final mApplicationId:I

.field private final mConnection:Ljava/lang/String;

.field private final mDeviceId:Ljava/lang/String;

.field private final mDevicePlatform:Ljava/lang/String;

.field private final mEventTime:J

.field private final mEventType:I

.field private final mHandset:Ljava/lang/String;

.field private final mInfo:Ljava/lang/String;

.field private final mInstallationId:Ljava/lang/String;

.field private final mLocation:Ljava/lang/String;

.field private final mOperator:Ljava/lang/String;

.field private final mOs:Ljava/lang/String;

.field private final mReferrer:Ljava/lang/String;

.field private final mSource:Ljava/lang/String;

.field private final mSourceSite:Ljava/lang/String;

.field private mStorageId:J


# direct methods
.method private constructor <init>(Lcom/somo/apptimiser/SomoEvent$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/somo/apptimiser/SomoEvent$Builder;

    .prologue
    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/somo/apptimiser/SomoEvent;->mStorageId:J

    .line 19
    const-string v0, "Android"

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEvent;->mDevicePlatform:Ljava/lang/String;

    .line 279
    # getter for: Lcom/somo/apptimiser/SomoEvent$Builder;->mEventType:I
    invoke-static {p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->access$100(Lcom/somo/apptimiser/SomoEvent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/somo/apptimiser/SomoEvent;->mEventType:I

    .line 280
    # getter for: Lcom/somo/apptimiser/SomoEvent$Builder;->mApplicationId:I
    invoke-static {p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->access$200(Lcom/somo/apptimiser/SomoEvent$Builder;)I

    move-result v0

    iput v0, p0, Lcom/somo/apptimiser/SomoEvent;->mApplicationId:I

    .line 281
    # getter for: Lcom/somo/apptimiser/SomoEvent$Builder;->mDeviceId:Ljava/lang/String;
    invoke-static {p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->access$300(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEvent;->mDeviceId:Ljava/lang/String;

    .line 282
    # getter for: Lcom/somo/apptimiser/SomoEvent$Builder;->mAndroidId:Ljava/lang/String;
    invoke-static {p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->access$400(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEvent;->mAndroidId:Ljava/lang/String;

    .line 283
    # getter for: Lcom/somo/apptimiser/SomoEvent$Builder;->mHandset:Ljava/lang/String;
    invoke-static {p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->access$500(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEvent;->mHandset:Ljava/lang/String;

    .line 284
    # getter for: Lcom/somo/apptimiser/SomoEvent$Builder;->mOs:Ljava/lang/String;
    invoke-static {p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->access$600(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEvent;->mOs:Ljava/lang/String;

    .line 285
    # getter for: Lcom/somo/apptimiser/SomoEvent$Builder;->mSource:Ljava/lang/String;
    invoke-static {p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->access$700(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEvent;->mSource:Ljava/lang/String;

    .line 286
    # getter for: Lcom/somo/apptimiser/SomoEvent$Builder;->mSourceSite:Ljava/lang/String;
    invoke-static {p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->access$800(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEvent;->mSourceSite:Ljava/lang/String;

    .line 287
    # getter for: Lcom/somo/apptimiser/SomoEvent$Builder;->mInfo:Ljava/lang/String;
    invoke-static {p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->access$900(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEvent;->mInfo:Ljava/lang/String;

    .line 288
    # getter for: Lcom/somo/apptimiser/SomoEvent$Builder;->mConnection:Ljava/lang/String;
    invoke-static {p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->access$1000(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEvent;->mConnection:Ljava/lang/String;

    .line 289
    # getter for: Lcom/somo/apptimiser/SomoEvent$Builder;->mOperator:Ljava/lang/String;
    invoke-static {p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->access$1100(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEvent;->mOperator:Ljava/lang/String;

    .line 290
    # getter for: Lcom/somo/apptimiser/SomoEvent$Builder;->mReferrer:Ljava/lang/String;
    invoke-static {p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->access$1200(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEvent;->mReferrer:Ljava/lang/String;

    .line 291
    # getter for: Lcom/somo/apptimiser/SomoEvent$Builder;->mLocation:Ljava/lang/String;
    invoke-static {p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->access$1300(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEvent;->mLocation:Ljava/lang/String;

    .line 292
    # getter for: Lcom/somo/apptimiser/SomoEvent$Builder;->mEventTime:J
    invoke-static {p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->access$1400(Lcom/somo/apptimiser/SomoEvent$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/somo/apptimiser/SomoEvent;->mEventTime:J

    .line 293
    # getter for: Lcom/somo/apptimiser/SomoEvent$Builder;->mInstallationId:Ljava/lang/String;
    invoke-static {p1}, Lcom/somo/apptimiser/SomoEvent$Builder;->access$1500(Lcom/somo/apptimiser/SomoEvent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/somo/apptimiser/SomoEvent;->mInstallationId:Ljava/lang/String;

    .line 294
    return-void
.end method

.method synthetic constructor <init>(Lcom/somo/apptimiser/SomoEvent$Builder;Lcom/somo/apptimiser/SomoEvent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/somo/apptimiser/SomoEvent$Builder;
    .param p2, "x1"    # Lcom/somo/apptimiser/SomoEvent$1;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/somo/apptimiser/SomoEvent;-><init>(Lcom/somo/apptimiser/SomoEvent$Builder;)V

    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/somo/apptimiser/SomoEvent;
    .locals 4
    .param p0, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 336
    if-nez p0, :cond_0

    .line 337
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cursor cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 339
    :cond_0
    new-instance v1, Lcom/somo/apptimiser/SomoEvent$Builder;

    invoke-direct {v1}, Lcom/somo/apptimiser/SomoEvent$Builder;-><init>()V

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->EVENT_TYPE:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/somo/apptimiser/SomoEvent$Builder;->eventType(I)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->OPERATOR:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/somo/apptimiser/SomoEvent$Builder;->operator(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->HANDSET:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/somo/apptimiser/SomoEvent$Builder;->handset(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->DEVICE_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/somo/apptimiser/SomoEvent$Builder;->deviceId(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->APPLICATION_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/somo/apptimiser/SomoEvent$Builder;->applicationId(I)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->ANDROID_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/somo/apptimiser/SomoEvent$Builder;->androidId(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->EVENT_TIME:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/somo/apptimiser/SomoEvent$Builder;->eventTime(J)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->REFERRER:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/somo/apptimiser/SomoEvent$Builder;->referrer(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->LOCATION:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/somo/apptimiser/SomoEvent$Builder;->location(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->CONNECTION:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/somo/apptimiser/SomoEvent$Builder;->connection(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->OS:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/somo/apptimiser/SomoEvent$Builder;->os(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->SOURCE:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/somo/apptimiser/SomoEvent$Builder;->source(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->SOURCE_SITE:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/somo/apptimiser/SomoEvent$Builder;->sourceSite(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->INFO:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/somo/apptimiser/SomoEvent$Builder;->info(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/somo/apptimiser/SomoEvent$EventFields;->INSTALLATION_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v2}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/somo/apptimiser/SomoEvent$Builder;->installationId(Ljava/lang/String;)Lcom/somo/apptimiser/SomoEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$Builder;->build()Lcom/somo/apptimiser/SomoEvent;

    move-result-object v0

    .line 357
    .local v0, "e":Lcom/somo/apptimiser/SomoEvent;
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/somo/apptimiser/SomoEvent;->mStorageId:J

    .line 358
    return-object v0
.end method


# virtual methods
.method delete(Lcom/somo/apptimiser/SomoEventStorer;)V
    .locals 2
    .param p1, "e"    # Lcom/somo/apptimiser/SomoEventStorer;

    .prologue
    .line 268
    if-nez p1, :cond_0

    .line 269
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SomoEventStorer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    iget-wide v0, p0, Lcom/somo/apptimiser/SomoEvent;->mStorageId:J

    invoke-interface {p1, v0, v1}, Lcom/somo/apptimiser/SomoEventStorer;->removeEvent(J)V

    .line 272
    return-void
.end method

.method save(Lcom/somo/apptimiser/SomoEventStorer;)V
    .locals 2
    .param p1, "e"    # Lcom/somo/apptimiser/SomoEventStorer;

    .prologue
    .line 254
    if-nez p1, :cond_0

    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SomoEventStorer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/somo/apptimiser/SomoEvent;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/somo/apptimiser/SomoEventStorer;->addEvent(Landroid/content/ContentValues;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/somo/apptimiser/SomoEvent;->mStorageId:J

    .line 258
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 303
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 305
    .local v0, "c":Landroid/content/ContentValues;
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->EVENT_TYPE:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/somo/apptimiser/SomoEvent;->mEventType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 306
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->APPLICATION_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/somo/apptimiser/SomoEvent;->mApplicationId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 307
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->DEVICE_PLATFORM:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->DEVICE_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/somo/apptimiser/SomoEvent;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->ANDROID_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/somo/apptimiser/SomoEvent;->mAndroidId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->HANDSET:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/somo/apptimiser/SomoEvent;->mHandset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->OS:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/somo/apptimiser/SomoEvent;->mOs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->SOURCE:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/somo/apptimiser/SomoEvent;->mSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->SOURCE_SITE:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/somo/apptimiser/SomoEvent;->mSourceSite:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->INFO:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/somo/apptimiser/SomoEvent;->mInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->CONNECTION:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/somo/apptimiser/SomoEvent;->mConnection:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->OPERATOR:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/somo/apptimiser/SomoEvent;->mOperator:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->REFERRER:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/somo/apptimiser/SomoEvent;->mReferrer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->LOCATION:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/somo/apptimiser/SomoEvent;->mLocation:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->EVENT_TIME:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/somo/apptimiser/SomoEvent;->mEventTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 320
    sget-object v1, Lcom/somo/apptimiser/SomoEvent$EventFields;->INSTALLATION_ID:Lcom/somo/apptimiser/SomoEvent$EventFields;

    invoke-virtual {v1}, Lcom/somo/apptimiser/SomoEvent$EventFields;->field()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/somo/apptimiser/SomoEvent;->mInstallationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    return-object v0
.end method
