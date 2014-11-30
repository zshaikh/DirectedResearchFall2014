.class Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;
.super Ljava/lang/Object;
.source "JSIAdToDeviceHandler.java"


# instance fields
.field private container:Lcom/nativex/monetization/mraid/MRAIDContainer;


# direct methods
.method constructor <init>(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    .locals 0
    .param p1, "container"    # Lcom/nativex/monetization/mraid/MRAIDContainer;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    .line 40
    return-void
.end method

.method private fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;
    .param p3, "command"    # Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    .prologue
    const-string v2, " failed. "

    .line 104
    iget-object v0, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 113
    :goto_0
    return-void

    .line 107
    :cond_0
    if-nez p2, :cond_1

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->getCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed. "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public adConverted()V
    .locals 2

    .prologue
    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->adConverted()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :goto_0
    return-void

    .line 282
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to call redeem currency"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "AdToDevice: close()"

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->close()V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const-string v0, "close() failed. MRAIDContainer reference lost."

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public createCalendarEvent(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: createCalendarEvent("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 225
    :try_start_0
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-nez v3, :cond_0

    .line 226
    const-string v3, "Container reference lost"

    const/4 v4, 0x0

    sget-object v5, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CREATE_CALENDAR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v3, v4, v5}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    .line 228
    :cond_0
    invoke-static {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 229
    .local v0, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-direct {v2}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;-><init>()V

    .line 230
    .local v2, "entry":Lcom/nativex/monetization/mraid/objects/CalendarEntryData;
    const-string v3, "description"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->setDescription(Ljava/lang/String;)V

    .line 231
    const-string v3, "end"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->setEnd(Ljava/lang/String;)V

    .line 232
    const-string v3, "id"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->setId(Ljava/lang/String;)V

    .line 233
    const-string v3, "location"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->setLocation(Ljava/lang/String;)V

    .line 234
    const-string v3, "reminder"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->setReminder(Ljava/lang/String;)V

    .line 235
    const-string v3, "start"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->setStart(Ljava/lang/String;)V

    .line 236
    const-string v3, "status"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->setStatus(Ljava/lang/String;)V

    .line 237
    const-string v3, "summary"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->setSummary(Ljava/lang/String;)V

    .line 238
    const-string v3, "transparency"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->setTransparency(Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->addCalendarEntry(Lcom/nativex/monetization/mraid/objects/CalendarEntryData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "entry":Lcom/nativex/monetization/mraid/objects/CalendarEntryData;
    :goto_0
    return-void

    .line 241
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->CREATE_CALENDAR_EVENT:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v6, v1, v3}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public expand()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "AdToDevice: expand()"

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->expand(Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v0, "expand() failed. MRAIDContainer reference lost."

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public expand(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: expand("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 86
    if-eqz p1, :cond_0

    .line 87
    :try_start_0
    invoke-static {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 88
    .local v0, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 89
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lcom/nativex/common/Utilities;->isHttpOrHttpsUrl(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->expand(Ljava/lang/String;)V

    .line 98
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/nativex/monetization/mraid/MRAIDContainer;->expand(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->EXPAND:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v5, v1, v3}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public loaded()V
    .locals 2

    .prologue
    .line 185
    const-string v1, "AdToDevice: loaded()"

    invoke-static {v1}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->onMraidLoaded()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 189
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error occured while initializing the MRAID controller"

    invoke-static {v1, v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdToDevice: log("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 177
    :try_start_0
    invoke-static {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 178
    .local v0, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "log"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Logging failed"

    const/4 v3, 0x0

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->LOG:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v2, v3, v4}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public open(Ljava/lang/String;)V
    .locals 6
    .param p1, "encodedData"    # Ljava/lang/String;

    .prologue
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: open("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-nez v3, :cond_1

    .line 46
    const-string v3, " open - MRAIDContainer is null."

    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 51
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 52
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->trackClick(Ljava/lang/String;)V

    .line 54
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3}, Lcom/nativex/monetization/mraid/MRAIDContainer;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/nativex/monetization/mraid/MRAIDUtils;->startMRAIDBrowser(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    sget-object v4, Lcom/nativex/monetization/enums/AdEvent;->USER_NAVIGATES_OUT_OF_APP:Lcom/nativex/monetization/enums/AdEvent;

    const-string v5, "The user clicked on a link in the ad and is navigating out of the app"

    invoke-virtual {v3, v4, v5}, Lcom/nativex/monetization/mraid/MRAIDContainer;->fireListener(Lcom/nativex/monetization/enums/AdEvent;Ljava/lang/String;)V

    .line 56
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDManager;->releaseAd(Lcom/nativex/monetization/mraid/MRAIDContainer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->OPEN:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v3, v1, v4}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: playVideo("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 197
    :try_start_0
    invoke-static {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 198
    .local v0, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 199
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->playVideo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 201
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->PLAY_VIDEO:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v3, v1, v4}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public registerCallId(Ljava/lang/String;)V
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v1, p1}, Lcom/nativex/monetization/mraid/MRAIDContainer;->registerCallId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    :goto_0
    return-void

    .line 274
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 275
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Failed to register command callId with the controller"

    invoke-static {v1, v0}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public resize()V
    .locals 1

    .prologue
    .line 165
    const-string v0, "AdToDevice: resize()"

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDContainer;->resize()V

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v0, "resize() failed. MRAIDContainer reference lost"

    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDLogger;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setExpandProperties(Ljava/lang/String;)V
    .locals 5
    .param p1, "expandProperties"    # Ljava/lang/String;

    .prologue
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: setExpandProperties("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 119
    :try_start_0
    invoke-static {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 120
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/nativex/monetization/mraid/objects/ExpandProperties;

    invoke-direct {v2}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;-><init>()V

    .line 121
    .local v2, "props":Lcom/nativex/monetization/mraid/objects/ExpandProperties;
    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->setHeight(Ljava/lang/Integer;)V

    .line 122
    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->setWidth(Ljava/lang/Integer;)V

    .line 123
    const-string v3, "isModal"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->setModal(Ljava/lang/Boolean;)V

    .line 124
    const-string v3, "useCustomClose"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/ExpandProperties;->setUseCustomClose(Ljava/lang/Boolean;)V

    .line 125
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setExpandProperties(Lcom/nativex/monetization/mraid/objects/ExpandProperties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "props":Lcom/nativex/monetization/mraid/objects/ExpandProperties;
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 127
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_EXPAND_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v3, v1, v4}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public setOrientationProperties(Ljava/lang/String;)V
    .locals 5
    .param p1, "orientationProperties"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: setOrientationProperties("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 135
    :try_start_0
    invoke-static {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 136
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/nativex/monetization/mraid/objects/OrientationProperties;

    invoke-direct {v2}, Lcom/nativex/monetization/mraid/objects/OrientationProperties;-><init>()V

    .line 137
    .local v2, "props":Lcom/nativex/monetization/mraid/objects/OrientationProperties;
    const-string v3, "allowOrientationChange"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/OrientationProperties;->setAllowOrientationChange(Ljava/lang/Boolean;)V

    .line 138
    const-string v3, "forceOrientation"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/OrientationProperties;->setForceOrientation(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setOrientationProperties(Lcom/nativex/monetization/mraid/objects/OrientationProperties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "props":Lcom/nativex/monetization/mraid/objects/OrientationProperties;
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_ORIENTATION_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v3, v1, v4}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public setPageSize(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdToDevice: setPageSize("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 261
    :try_start_0
    invoke-static {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 262
    .local v0, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "height"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 263
    .local v2, "height":I
    const-string v4, "width"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 264
    .local v3, "width":I
    iget-object v4, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v4, v3, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setPageSize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "height":I
    .end local v3    # "width":I
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 266
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "Unable to parse setPageSize data"

    invoke-static {v4, v1}, Lcom/nativex/common/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setResizeProperties(Ljava/lang/String;)V
    .locals 5
    .param p1, "resizeProperties"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: setResizeProperties("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 150
    :try_start_0
    invoke-static {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 151
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/nativex/monetization/mraid/objects/ResizeProperties;

    invoke-direct {v2}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;-><init>()V

    .line 152
    .local v2, "props":Lcom/nativex/monetization/mraid/objects/ResizeProperties;
    const-string v3, "allowOffscreen"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->setAllowOffscreen(Ljava/lang/Boolean;)V

    .line 153
    const-string v3, "customClosePosition"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->setCustomClosePosition(Ljava/lang/String;)V

    .line 154
    const-string v3, "height"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->setHeight(Ljava/lang/Integer;)V

    .line 155
    const-string v3, "offsetX"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->setOffsetX(Ljava/lang/Integer;)V

    .line 156
    const-string v3, "offsetY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->setOffsetY(Ljava/lang/Integer;)V

    .line 157
    const-string v3, "width"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nativex/monetization/mraid/objects/ResizeProperties;->setWidth(Ljava/lang/Integer;)V

    .line 158
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->setResizeProperties(Lcom/nativex/monetization/mraid/objects/ResizeProperties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v0    # "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "props":Lcom/nativex/monetization/mraid/objects/ResizeProperties;
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    sget-object v4, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->SET_RESIZE_PROPERTIES:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v3, v1, v4}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 207
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdToDevice: storePicture("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 209
    :try_start_0
    invoke-static {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 210
    .local v0, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "url"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 211
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 212
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->storePicture(Ljava/lang/String;)V

    .line 219
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 214
    .restart local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "url":Ljava/lang/String;
    :cond_0
    const-string v3, "Picture url is invalid"

    const/4 v4, 0x0

    sget-object v5, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->STORE_PICTURE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v3, v4, v5}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "url":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->STORE_PICTURE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v6, v1, v3}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method

.method public useCustomClose(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AdToDevice: useCustomClose("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 250
    :try_start_0
    invoke-static {p1}, Lcom/nativex/monetization/mraid/MRAIDUtils;->decodeData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 251
    .local v0, "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->container:Lcom/nativex/monetization/mraid/MRAIDContainer;

    const-string v2, "useCustomClose"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/nativex/monetization/mraid/MRAIDContainer;->useCustomClose(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v0    # "decodedData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    sget-object v3, Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;->USE_CUSTOM_CLOSE:Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;

    invoke-direct {p0, v2, v1, v3}, Lcom/nativex/monetization/mraid/JSIAdToDeviceHandler;->fireErrorEvent(Ljava/lang/String;Ljava/lang/Throwable;Lcom/nativex/monetization/mraid/MRAIDUtils$JSCommands;)V

    goto :goto_0
.end method
