.class Lcom/somo/apptimiser/SomoApptimiserTracker$1;
.super Ljava/lang/Thread;
.source "SomoApptimiserTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/somo/apptimiser/SomoApptimiserTracker;->asyncSetup(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/somo/apptimiser/SomoApptimiserTracker;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    iput-object p2, p0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 158
    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mInstantiateLock:Ljava/lang/Object;
    invoke-static {}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$000()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    .line 159
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->trackerState:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;
    invoke-static {v11}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$100(Lcom/somo/apptimiser/SomoApptimiserTracker;)Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    move-result-object v11

    sget-object v13, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->STOPPED:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    if-eq v11, v13, :cond_1

    .line 160
    new-instance v3, Lcom/somo/apptimiser/SomoEncryptionAes;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mConfig:Lcom/somo/apptimiser/SomoConfiguration;
    invoke-static {v11}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$200(Lcom/somo/apptimiser/SomoApptimiserTracker;)Lcom/somo/apptimiser/SomoConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lcom/somo/apptimiser/SomoConfiguration;->getRsaPublicKey()Ljava/security/spec/RSAPublicKeySpec;

    move-result-object v11

    invoke-virtual {v11}, Ljava/security/spec/RSAPublicKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mConfig:Lcom/somo/apptimiser/SomoConfiguration;
    invoke-static {v13}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$200(Lcom/somo/apptimiser/SomoApptimiserTracker;)Lcom/somo/apptimiser/SomoConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lcom/somo/apptimiser/SomoConfiguration;->getRsaPublicKey()Ljava/security/spec/RSAPublicKeySpec;

    move-result-object v13

    invoke-virtual {v13}, Ljava/security/spec/RSAPublicKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v13

    const/16 v14, 0x80

    invoke-direct {v3, v11, v13, v14}, Lcom/somo/apptimiser/SomoEncryptionAes;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 165
    .local v3, "cipher":Lcom/somo/apptimiser/SomoEncryption;
    new-instance v8, Lcom/somo/apptimiser/SomoNetworkAgent;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mConfig:Lcom/somo/apptimiser/SomoConfiguration;
    invoke-static {v11}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$200(Lcom/somo/apptimiser/SomoApptimiserTracker;)Lcom/somo/apptimiser/SomoConfiguration;

    move-result-object v11

    invoke-virtual {v11}, Lcom/somo/apptimiser/SomoConfiguration;->getServerUri()Landroid/net/Uri;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mApplicationId:I
    invoke-static {v13}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$300(Lcom/somo/apptimiser/SomoApptimiserTracker;)I

    move-result v13

    invoke-direct {v8, v11, v13, v3}, Lcom/somo/apptimiser/SomoNetworkAgent;-><init>(Landroid/net/Uri;ILcom/somo/apptimiser/SomoEncryption;)V

    .line 168
    .local v8, "networkAgent":Lcom/somo/apptimiser/SomoNetworkAgent;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    new-instance v13, Lcom/somo/apptimiser/SomoEventStore;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mConfig:Lcom/somo/apptimiser/SomoConfiguration;
    invoke-static {v15}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$200(Lcom/somo/apptimiser/SomoApptimiserTracker;)Lcom/somo/apptimiser/SomoConfiguration;

    move-result-object v15

    invoke-virtual {v15}, Lcom/somo/apptimiser/SomoConfiguration;->getStorageSettings()Lcom/somo/apptimiser/SomoConfiguration$StorageSettings;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/somo/apptimiser/SomoEventStore;-><init>(Landroid/content/Context;Lcom/somo/apptimiser/SomoConfiguration$StorageSettings;)V

    # setter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mEventStore:Lcom/somo/apptimiser/SomoEventStorer;
    invoke-static {v11, v13}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$402(Lcom/somo/apptimiser/SomoApptimiserTracker;Lcom/somo/apptimiser/SomoEventStorer;)Lcom/somo/apptimiser/SomoEventStorer;

    .line 169
    new-instance v7, Lcom/somo/apptimiser/SomoEventQueue;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mEventStore:Lcom/somo/apptimiser/SomoEventStorer;
    invoke-static {v11}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$400(Lcom/somo/apptimiser/SomoApptimiserTracker;)Lcom/somo/apptimiser/SomoEventStorer;

    move-result-object v11

    invoke-direct {v7, v11}, Lcom/somo/apptimiser/SomoEventQueue;-><init>(Lcom/somo/apptimiser/SomoEventStorer;)V

    .line 170
    .local v7, "mEventQueue":Lcom/somo/apptimiser/SomoEventQueue;
    invoke-static {v7}, Lcom/somo/apptimiser/SomoEventQueue;->setInstance(Lcom/somo/apptimiser/SomoEventQueue;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    new-instance v13, Lcom/somo/apptimiser/SomoDispatch;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {v13, v14, v8, v7}, Lcom/somo/apptimiser/SomoDispatch;-><init>(Landroid/content/Context;Lcom/somo/apptimiser/SomoNetworkAgent;Lcom/somo/apptimiser/SomoEventQueue;)V

    # setter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mDispatch:Lcom/somo/apptimiser/SomoDispatch;
    invoke-static {v11, v13}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$502(Lcom/somo/apptimiser/SomoApptimiserTracker;Lcom/somo/apptimiser/SomoDispatch;)Lcom/somo/apptimiser/SomoDispatch;

    .line 173
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    sget-object v13, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->RUNNING:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    # setter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->trackerState:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;
    invoke-static {v11, v13}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$102(Lcom/somo/apptimiser/SomoApptimiserTracker;Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;)Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    .line 175
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mTempEvents:Ljava/util/Queue;
    invoke-static {v11}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$600(Lcom/somo/apptimiser/SomoApptimiserTracker;)Ljava/util/Queue;

    move-result-object v13

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mTempEvents:Ljava/util/Queue;
    invoke-static {v11}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$600(Lcom/somo/apptimiser/SomoApptimiserTracker;)Ljava/util/Queue;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Queue;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_0

    .line 177
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mTempEvents:Ljava/util/Queue;
    invoke-static {v11}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$600(Lcom/somo/apptimiser/SomoApptimiserTracker;)Ljava/util/Queue;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/somo/apptimiser/SomoEvent;

    .line 178
    .local v4, "e":Lcom/somo/apptimiser/SomoEvent;
    invoke-virtual {v7, v4}, Lcom/somo/apptimiser/SomoEventQueue;->addEvent(Lcom/somo/apptimiser/SomoEvent;)V

    goto :goto_0

    .line 182
    .end local v4    # "e":Lcom/somo/apptimiser/SomoEvent;
    .end local v6    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v11

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v11

    .line 184
    .end local v3    # "cipher":Lcom/somo/apptimiser/SomoEncryption;
    .end local v7    # "mEventQueue":Lcom/somo/apptimiser/SomoEventQueue;
    .end local v8    # "networkAgent":Lcom/somo/apptimiser/SomoNetworkAgent;
    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v11

    .line 181
    .restart local v3    # "cipher":Lcom/somo/apptimiser/SomoEncryption;
    .restart local v7    # "mEventQueue":Lcom/somo/apptimiser/SomoEventQueue;
    .restart local v8    # "networkAgent":Lcom/somo/apptimiser/SomoNetworkAgent;
    :cond_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mTempEvents:Ljava/util/Queue;
    invoke-static {v11}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$600(Lcom/somo/apptimiser/SomoApptimiserTracker;)Ljava/util/Queue;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Queue;->clear()V

    .line 182
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 184
    .end local v3    # "cipher":Lcom/somo/apptimiser/SomoEncryption;
    .end local v7    # "mEventQueue":Lcom/somo/apptimiser/SomoEventQueue;
    .end local v8    # "networkAgent":Lcom/somo/apptimiser/SomoNetworkAgent;
    :cond_1
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 186
    new-instance v9, Lcom/somo/apptimiser/SomoPreferences;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->val$context:Landroid/content/Context;

    invoke-direct {v9, v11}, Lcom/somo/apptimiser/SomoPreferences;-><init>(Landroid/content/Context;)V

    .line 187
    .local v9, "prefs":Lcom/somo/apptimiser/SomoPreferences;
    invoke-virtual {v9}, Lcom/somo/apptimiser/SomoPreferences;->getFingerprint()Ljava/lang/String;

    move-result-object v5

    .line 189
    .local v5, "fingerprint":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 196
    const-wide/16 v11, 0x7d0

    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mInitTimeStamp:J
    invoke-static {v15}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$700(Lcom/somo/apptimiser/SomoApptimiserTracker;)J

    move-result-wide v15

    sub-long/2addr v13, v15

    sub-long v1, v11, v13

    .line 199
    .local v1, "adjustedReferrerDelay":J
    const-wide/16 v11, 0x0

    cmp-long v11, v1, v11

    if-lez v11, :cond_2

    .line 200
    invoke-static {v1, v2}, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->sleep(J)V

    .line 203
    :cond_2
    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mInstantiateLock:Ljava/lang/Object;
    invoke-static {}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$000()Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 204
    :try_start_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->trackerState:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;
    invoke-static {v11}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$100(Lcom/somo/apptimiser/SomoApptimiserTracker;)Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    move-result-object v11

    sget-object v13, Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;->STOPPED:Lcom/somo/apptimiser/SomoApptimiserTracker$TrackerState;

    if-eq v11, v13, :cond_4

    .line 205
    if-eqz v9, :cond_3

    .line 206
    invoke-virtual {v9}, Lcom/somo/apptimiser/SomoPreferences;->getReferrer()Ljava/lang/String;

    move-result-object v10

    .line 207
    .local v10, "referrer":Ljava/lang/String;
    if-eqz v10, :cond_6

    const-string v11, ""

    if-eq v10, v11, :cond_6

    .line 208
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    # setter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->mReferrerId:Ljava/lang/String;
    invoke-static {v11, v10}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$802(Lcom/somo/apptimiser/SomoApptimiserTracker;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/somo/apptimiser/SomoApptimiserTracker$1;->this$0:Lcom/somo/apptimiser/SomoApptimiserTracker;

    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Lcom/somo/apptimiser/SomoApptimiserTracker;->track(I)V

    .line 216
    .end local v10    # "referrer":Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/somo/apptimiser/SomoApptimiser;->TAG:Ljava/lang/String;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "/"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v13, "2.0.0"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 217
    invoke-virtual {v9}, Lcom/somo/apptimiser/SomoPreferences;->edit()Lcom/somo/apptimiser/SomoPreferences$Editor;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/somo/apptimiser/SomoPreferences$Editor;->setFingerprint(Ljava/lang/String;)Lcom/somo/apptimiser/SomoPreferences$Editor;

    move-result-object v11

    invoke-virtual {v11}, Lcom/somo/apptimiser/SomoPreferences$Editor;->commit()Z

    .line 219
    :cond_4
    monitor-exit v12

    .line 225
    .end local v1    # "adjustedReferrerDelay":J
    :cond_5
    :goto_2
    return-void

    .line 211
    .restart local v1    # "adjustedReferrerDelay":J
    .restart local v10    # "referrer":Ljava/lang/String;
    :cond_6
    # getter for: Lcom/somo/apptimiser/SomoApptimiserTracker;->log:Lcom/somo/apptimiser/SomoLogger;
    invoke-static {}, Lcom/somo/apptimiser/SomoApptimiserTracker;->access$900()Lcom/somo/apptimiser/SomoLogger;

    move-result-object v11

    const-string v13, "No referrer field sent"

    invoke-virtual {v11, v13}, Lcom/somo/apptimiser/SomoLogger;->d(Ljava/lang/String;)I

    goto :goto_1

    .line 219
    .end local v10    # "referrer":Ljava/lang/String;
    :catchall_2
    move-exception v11

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 221
    .end local v1    # "adjustedReferrerDelay":J
    :catch_0
    move-exception v4

    .line 222
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
