.class public Lcom/amazon/ags/jni/achievements/ResetAchievementsJniRespHandler;
.super Lcom/amazon/ags/jni/JniResponseHandler;
.source "ResetAchievementsJniRespHandler.java"

# interfaces
.implements Lcom/amazon/ags/api/AGResponseCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/ags/jni/JniResponseHandler;",
        "Lcom/amazon/ags/api/AGResponseCallback",
        "<",
        "Lcom/amazon/ags/api/RequestResponse;",
        ">;"
    }
.end annotation


# static fields
.field private static LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-string v0, "ResetAchievementsJniRespHandler"

    sput-object v0, Lcom/amazon/ags/jni/achievements/ResetAchievementsJniRespHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "developerTag"    # I
    .param p2, "callbackPointer"    # J

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ags/jni/JniResponseHandler;-><init>(IJ)V

    .line 41
    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/ags/api/RequestResponse;)V
    .locals 4
    .param p1, "result"    # Lcom/amazon/ags/api/RequestResponse;

    .prologue
    .line 49
    invoke-interface {p1}, Lcom/amazon/ags/api/RequestResponse;->isError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/amazon/ags/jni/achievements/ResetAchievementsJniRespHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "jniResetAchievement response - onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-wide v0, p0, Lcom/amazon/ags/jni/achievements/ResetAchievementsJniRespHandler;->m_CallbackPointer:J

    invoke-interface {p1}, Lcom/amazon/ags/api/RequestResponse;->getError()Lcom/amazon/ags/api/ErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/ags/api/ErrorCode;->ordinal()I

    move-result v2

    iget v3, p0, Lcom/amazon/ags/jni/achievements/ResetAchievementsJniRespHandler;->m_DeveloperTag:I

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/ags/jni/achievements/AchievementsJni;->resetAchievementsResponseFailure(JII)V

    .line 79
    :goto_0
    return-void

    .line 65
    :cond_0
    sget-object v0, Lcom/amazon/ags/jni/achievements/ResetAchievementsJniRespHandler;->LOG_TAG:Ljava/lang/String;

    const-string v1, "jniResetAchievement response - onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-wide v0, p0, Lcom/amazon/ags/jni/achievements/ResetAchievementsJniRespHandler;->m_CallbackPointer:J

    iget v2, p0, Lcom/amazon/ags/jni/achievements/ResetAchievementsJniRespHandler;->m_DeveloperTag:I

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/ags/jni/achievements/AchievementsJni;->resetAchievementsResponseSuccess(Lcom/amazon/ags/api/RequestResponse;JI)V

    goto :goto_0
.end method
