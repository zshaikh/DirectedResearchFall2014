.class final Lcom/bugsense/trace/BugSenseHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bugsense/trace/BugSenseHandler;->initAndStartSession(Landroid/content/Context;Lcom/bugsense/trace/BugSenseHandler$Processor;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bugsense/trace/BugSenseHandler$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x0

    const-string v4, "/"

    iget-object v0, p0, Lcom/bugsense/trace/BugSenseHandler$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bugsense/trace/Utils;->manageUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bugsense/trace/G;->UID:Ljava/lang/String;

    sget-boolean v0, Lcom/bugsense/trace/G;->proxyEnabled:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    sget-object v1, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bugsense/trace/G;->UID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crash     URL set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bugsense/trace/G;->URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Analytics URL set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v3}, Lcom/bugsense/trace/models/PingsMechanism;->transmitPingASync(I)V

    :try_start_0
    iget-object v0, p0, Lcom/bugsense/trace/BugSenseHandler$1;->val$context:Landroid/content/Context;

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    # setter for: Lcom/bugsense/trace/BugSenseHandler;->preferences:Landroid/content/SharedPreferences;
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->access$002(Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;

    # getter for: Lcom/bugsense/trace/BugSenseHandler;->preferences:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->access$000()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    # setter for: Lcom/bugsense/trace/BugSenseHandler;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->access$102(Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    # getter for: Lcom/bugsense/trace/BugSenseHandler;->editor:Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Lcom/bugsense/trace/BugSenseHandler;->access$100()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lastping"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/bugsense/trace/BugSenseHandler$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->flush(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/bugsense/trace/BugSenseHandler$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/bugsense/trace/BugSenseHandler;->startSession(Landroid/content/Context;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bugsense/trace/G;->FILES_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "fixnotification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const-string v2, ""

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_6

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    :goto_2
    move-object v2, v3

    :goto_3
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lcom/bugsense/trace/BugSenseHandler$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/bugsense/trace/BugSense;->showUpgradeNotification(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    const-string v0, "http://alt.bugsense.appspot.com/api/errors"

    sput-object v0, Lcom/bugsense/trace/G;->URL:Ljava/lang/String;

    sget-object v0, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    sget-object v1, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://alt.bugsense.com/api/ticks/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bugsense/trace/G;->API_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/bugsense/trace/G;->UID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bugsense/trace/G;->ANALYTICS_URL:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/bugsense/trace/G;->TAG:Ljava/lang/String;

    const-string v2, "Preferences are null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/bugsense/trace/BugSenseHandler;->I_WANT_TO_DEBUG:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v3

    :goto_5
    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v1, v3

    goto :goto_5

    :cond_6
    move-object v1, v2

    goto :goto_2
.end method
