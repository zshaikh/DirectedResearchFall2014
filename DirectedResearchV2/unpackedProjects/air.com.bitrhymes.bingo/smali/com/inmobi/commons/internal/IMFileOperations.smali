.class public Lcom/inmobi/commons/internal/IMFileOperations;
.super Ljava/lang/Object;
.source "IMFileOperations.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBooleanPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v1, ""

    .line 100
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    :cond_0
    const-string v0, "IMCOMMONS_3.6.1"

    const-string v1, "Failed to get preferences..App context NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 106
    :goto_0
    return v0

    .line 105
    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static getIntPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v1, ""

    .line 111
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    const-string v0, "IMCOMMONS_3.6.1"

    const-string v1, "Failed to get preferences..App context NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 117
    :goto_0
    return v0

    .line 116
    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 117
    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v1, ""

    .line 89
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 91
    :cond_0
    const-string v0, "IMCOMMONS_3.6.1"

    const-string v1, "Failed to get preferences..App context NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 95
    :goto_0
    return-object v0

    .line 94
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 95
    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static readFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v2, "IMCOMMONS_3.6.1"

    .line 122
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    const-string v0, "IMCOMMONS_3.6.1"

    const-string v0, "Cannot read map application context or Filename NULL"

    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 165
    :goto_0
    return-object v0

    .line 127
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "data"

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 132
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :try_start_1
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 148
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v1

    .line 160
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    move-object v0, v1

    .line 165
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string v1, "IMCOMMONS_3.6.1"

    const-string v1, "Event log File doesnot exist"

    invoke-static {v2, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 135
    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    const-string v1, "IMCOMMONS_3.6.1"

    const-string v1, "Event log File corrupted"

    invoke-static {v2, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 142
    goto :goto_0

    .line 143
    :catch_2
    move-exception v0

    .line 144
    const-string v1, "IMCOMMONS_3.6.1"

    const-string v1, "Event log File IO Exception"

    invoke-static {v2, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 145
    goto :goto_0

    .line 150
    :catch_3
    move-exception v0

    .line 152
    const-string v1, "IMCOMMONS_3.6.1"

    const-string v1, "End of file"

    invoke-static {v2, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 153
    goto :goto_0

    .line 155
    :catch_4
    move-exception v0

    .line 156
    const-string v1, "IMCOMMONS_3.6.1"

    const-string v1, "Error reading Event log file"

    invoke-static {v2, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v3

    .line 157
    goto :goto_0

    .line 161
    :catch_5
    move-exception v0

    .line 162
    const-string v0, "IMCOMMONS_3.6.1"

    const-string v0, "Log File Close Exception"

    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public static saveToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const-string v6, "Log File IO Exception"

    const-string v5, "IMCOMMONS_3.6.1"

    .line 169
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 171
    :cond_0
    const-string v0, "IMCOMMONS_3.6.1"

    const-string v0, "Cannot read map application context of Filename NULL"

    invoke-static {v5, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 203
    :goto_0
    return v0

    .line 174
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "data"

    invoke-virtual {p0, v1, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 177
    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 192
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 198
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 203
    const/4 v0, 0x1

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    .line 179
    const-string v1, "IMCOMMONS_3.6.1"

    const-string v1, "Log File Not found"

    invoke-static {v5, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 180
    goto :goto_0

    .line 181
    :catch_1
    move-exception v0

    .line 182
    const-string v1, "IMCOMMONS_3.6.1"

    const-string v1, "Log File IO Exception"

    invoke-static {v5, v6, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 183
    goto :goto_0

    .line 187
    :catch_2
    move-exception v0

    .line 188
    const-string v1, "IMCOMMONS_3.6.1"

    const-string v1, "Log File IO Exception write ERROR"

    invoke-static {v5, v1, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 189
    goto :goto_0

    .line 193
    :catch_3
    move-exception v0

    .line 194
    const-string v1, "IMCOMMONS_3.6.1"

    const-string v1, "Log File IO Exception"

    invoke-static {v5, v6, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    .line 195
    goto :goto_0

    .line 199
    :catch_4
    move-exception v0

    .line 200
    const-string v0, "IMCOMMONS_3.6.1"

    const-string v0, "Log File Close Exception"

    invoke-static {v5, v0}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v4

    .line 201
    goto :goto_0
.end method

.method public static setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 2

    .prologue
    const-string v1, ""

    .line 76
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    const-string v0, "IMCOMMONS_3.6.1"

    const-string v1, "Failed to set preferences..App context NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 83
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    const-string v1, ""

    .line 51
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    const-string v0, "IMCOMMONS_3.6.1"

    const-string v1, "Failed to set preferences..App context NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 56
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 58
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .prologue
    const-string v1, ""

    .line 63
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    const-string v0, "IMCOMMONS_3.6.1"

    const-string v1, "Failed to set preferences..App context NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 69
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 70
    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 71
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    const-string v1, ""

    .line 39
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    const-string v0, "IMCOMMONS_3.6.1"

    const-string v1, "Failed to set preferences..App context NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :goto_0
    return-void

    .line 44
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 46
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 47
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static setPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v1, ""

    .line 25
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 27
    :cond_0
    const-string v0, "IMCOMMONS_3.6.1"

    const-string v1, "Failed to set preferences..App context NULL"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/IMLog;->internal(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 34
    :goto_0
    return v0

    .line 30
    :cond_1
    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 32
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 34
    const/4 v0, 0x1

    goto :goto_0
.end method
