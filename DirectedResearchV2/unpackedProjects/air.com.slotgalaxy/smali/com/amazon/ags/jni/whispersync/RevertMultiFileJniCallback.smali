.class public Lcom/amazon/ags/jni/whispersync/RevertMultiFileJniCallback;
.super Ljava/lang/Object;
.source "RevertMultiFileJniCallback.java"

# interfaces
.implements Lcom/amazon/ags/api/whispersync/RevertMultiFileCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected m_CallbackPointer:J

.field protected m_DeveloperTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/amazon/ags/jni/whispersync/RevertMultiFileJniCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ags/jni/whispersync/RevertMultiFileJniCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .param p1, "developerTag"    # I
    .param p2, "callbackPointer"    # J

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/amazon/ags/jni/whispersync/RevertMultiFileJniCallback;->m_DeveloperTag:I

    .line 41
    iput-wide p2, p0, Lcom/amazon/ags/jni/whispersync/RevertMultiFileJniCallback;->m_CallbackPointer:J

    .line 43
    return-void
.end method


# virtual methods
.method public onPlayerCancelled()V
    .locals 3

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/amazon/ags/jni/whispersync/RevertMultiFileJniCallback;->m_CallbackPointer:J

    iget v2, p0, Lcom/amazon/ags/jni/whispersync/RevertMultiFileJniCallback;->m_DeveloperTag:I

    invoke-static {v0, v1, v2}, Lcom/amazon/ags/jni/whispersync/WhisperSyncJni;->getRequestRevertMultiFilePlayerCancelled(JI)V

    .line 57
    return-void
.end method

.method public onRevertFailure(Lcom/amazon/ags/api/ErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lcom/amazon/ags/api/ErrorCode;

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/amazon/ags/jni/whispersync/RevertMultiFileJniCallback;->m_CallbackPointer:J

    invoke-virtual {p1}, Lcom/amazon/ags/api/ErrorCode;->ordinal()I

    move-result v2

    iget v3, p0, Lcom/amazon/ags/jni/whispersync/RevertMultiFileJniCallback;->m_DeveloperTag:I

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/ags/jni/whispersync/WhisperSyncJni;->getRequestRevertMultiFileRevertFailure(JII)V

    .line 73
    return-void
.end method

.method public onRevertedGameData()V
    .locals 3

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/amazon/ags/jni/whispersync/RevertMultiFileJniCallback;->m_CallbackPointer:J

    iget v2, p0, Lcom/amazon/ags/jni/whispersync/RevertMultiFileJniCallback;->m_DeveloperTag:I

    invoke-static {v0, v1, v2}, Lcom/amazon/ags/jni/whispersync/WhisperSyncJni;->getRequestRevertMultiFileRevertedGameData(JI)V

    .line 87
    return-void
.end method