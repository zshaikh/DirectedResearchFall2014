.class public Lam/sunrise/android/calendar/sync/Offline;
.super Ljava/lang/Object;
.source "Offline.java"


# direct methods
.method public static a()Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->Create:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;-><init>(Lam/sunrise/android/calendar/sync/Offline$RecordType;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;
    .locals 3

    .prologue
    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0

    .line 69
    :cond_0
    const-string v0, "|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    const-string v2, ","

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, [Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    goto :goto_0
.end method

.method public static b()Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;
    .locals 2

    .prologue
    .line 85
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->Delete:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;-><init>(Lam/sunrise/android/calendar/sync/Offline$RecordType;)V

    return-object v0
.end method

.method public static c()Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->DeleteOccurrence:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;-><init>(Lam/sunrise/android/calendar/sync/Offline$RecordType;)V

    return-object v0
.end method

.method public static d()Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->Edit:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;-><init>(Lam/sunrise/android/calendar/sync/Offline$RecordType;)V

    return-object v0
.end method

.method public static e()Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->EditOccurrence:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;-><init>(Lam/sunrise/android/calendar/sync/Offline$RecordType;)V

    return-object v0
.end method

.method public static f()Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->RSVP:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;-><init>(Lam/sunrise/android/calendar/sync/Offline$RecordType;)V

    return-object v0
.end method
