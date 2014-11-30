.class Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;
.super Landroid/os/AsyncTask;
.source "VastManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fusepowered/m2/m2l/util/vast/VastManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProcessVastBackgroundTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fusepowered/m2/m2l/util/vast/VastManager;


# direct methods
.method private constructor <init>(Lcom/fusepowered/m2/m2l/util/vast/VastManager;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;->this$0:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fusepowered/m2/m2l/util/vast/VastManager;Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;-><init>(Lcom/fusepowered/m2/m2l/util/vast/VastManager;)V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 3
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    :try_start_0
    array-length v2, p1

    if-lez v2, :cond_0

    .line 157
    const/4 v2, 0x0

    aget-object v1, p1, v2

    .line 159
    .local v1, "vastXml":Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    .end local v1    # "vastXml":Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 160
    .restart local v1    # "vastXml":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;->this$0:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    # invokes: Lcom/fusepowered/m2/m2l/util/vast/VastManager;->processVastFollowingRedirect(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->access$0(Lcom/fusepowered/m2/m2l/util/vast/VastManager;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    goto :goto_0

    .line 163
    .end local v1    # "vastXml":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 164
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 166
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    goto :goto_1

    .line 167
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 168
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto :goto_1
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;->this$0:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    const/4 v1, 0x1

    # invokes: Lcom/fusepowered/m2/m2l/util/vast/VastManager;->vastProcessComplete(Z)V
    invoke-static {v0, v1}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->access$1(Lcom/fusepowered/m2/m2l/util/vast/VastManager;Z)V

    .line 182
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/fusepowered/m2/m2l/util/vast/VastManager$ProcessVastBackgroundTask;->this$0:Lcom/fusepowered/m2/m2l/util/vast/VastManager;

    const/4 v1, 0x0

    # invokes: Lcom/fusepowered/m2/m2l/util/vast/VastManager;->vastProcessComplete(Z)V
    invoke-static {v0, v1}, Lcom/fusepowered/m2/m2l/util/vast/VastManager;->access$1(Lcom/fusepowered/m2/m2l/util/vast/VastManager;Z)V

    .line 177
    return-void
.end method
