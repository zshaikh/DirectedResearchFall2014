.class public Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;
.super Ljava/lang/Object;
.source "Offline.java"


# instance fields
.field private dateInMillis:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private parentEventId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private parentSourceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private recordType:Lam/sunrise/android/calendar/sync/Offline$RecordType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private rsvpStatus:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private skipNotificationEmail:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private timeZone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lam/sunrise/android/calendar/sync/Offline$RecordType;)V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->recordType:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    .line 139
    return-void
.end method


# virtual methods
.method public andTimeZone(Ljava/lang/String;)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->recordType:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->EditOccurrence:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    if-eq v0, v1, :cond_0

    .line 171
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$InappropriateRecordTermException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addTimeZone can not be used for recordType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->recordType:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/Offline$InappropriateRecordTermException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->timeZone:Ljava/lang/String;

    .line 174
    return-object p0
.end method

.method public build()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public forDate(J)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->recordType:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->DeleteOccurrence:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->recordType:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->EditOccurrence:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    if-eq v0, v1, :cond_0

    .line 159
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$InappropriateRecordTermException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forDate can not be used for recordType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->recordType:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/Offline$InappropriateRecordTermException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    iput-wide p1, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->dateInMillis:J

    .line 162
    return-object p0
.end method

.method public geTimeZone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->timeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getDateInMillis()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->dateInMillis:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getParentEventId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->parentEventId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentSourceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->parentSourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getRSVPStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->rsvpStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordType()Lam/sunrise/android/calendar/sync/Offline$RecordType;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->recordType:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    return-object v0
.end method

.method public getSkipNotificationEmail()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->skipNotificationEmail:Z

    return v0
.end method

.method public message(Ljava/lang/String;)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->recordType:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->RSVP:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    if-eq v0, v1, :cond_0

    .line 212
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$InappropriateRecordTermException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message can not be used for recordType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->recordType:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/Offline$InappropriateRecordTermException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_0
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->message:Ljava/lang/String;

    .line 215
    return-object p0
.end method

.method public parent(Ljava/lang/String;Ljava/lang/String;)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->recordType:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->EditOccurrence:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    if-eq v0, v1, :cond_0

    .line 183
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$InappropriateRecordTermException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parent can not be used for recordType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->recordType:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/Offline$InappropriateRecordTermException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->parentEventId:Ljava/lang/String;

    .line 186
    iput-object p2, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->parentSourceId:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public setSkipNotificationEmail(Z)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->skipNotificationEmail:Z

    .line 147
    return-object p0
.end method

.method public status(Ljava/lang/String;)Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;
    .locals 3

    .prologue
    .line 199
    iget-object v0, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->recordType:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    sget-object v1, Lam/sunrise/android/calendar/sync/Offline$RecordType;->RSVP:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    if-eq v0, v1, :cond_0

    .line 200
    new-instance v0, Lam/sunrise/android/calendar/sync/Offline$InappropriateRecordTermException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attending can not be used for recordType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->recordType:Lam/sunrise/android/calendar/sync/Offline$RecordType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lam/sunrise/android/calendar/sync/Offline$InappropriateRecordTermException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    iput-object p1, p0, Lam/sunrise/android/calendar/sync/Offline$OfflineRecord;->rsvpStatus:Ljava/lang/String;

    .line 203
    return-object p0
.end method
