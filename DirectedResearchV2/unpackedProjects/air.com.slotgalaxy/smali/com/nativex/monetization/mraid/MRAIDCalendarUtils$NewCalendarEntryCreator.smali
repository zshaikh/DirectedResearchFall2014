.class Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;
.super Ljava/lang/Object;
.source "MRAIDCalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDCalendarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewCalendarEntryCreator"
.end annotation


# instance fields
.field private data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

.field private endDate:Ljava/util/Date;

.field private startDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lcom/nativex/monetization/mraid/objects/CalendarEntryData;)V
    .locals 0
    .param p1, "data"    # Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    .line 144
    return-void
.end method

.method private addReminder(Landroid/content/Context;JLjava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "eventId"    # J
    .param p4, "reminder"    # Ljava/lang/String;

    .prologue
    .line 218
    const-string v7, "-"

    invoke-virtual {p4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 219
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 220
    .local v1, "difference":J
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/nativex/common/Utilities;->milliesToMinutes(J)J

    move-result-wide v3

    .line 232
    .local v3, "minutes":J
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 233
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 234
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "minutes"

    long-to-int v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v7, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 236
    const-string v7, "method"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 238
    sget-object v7, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 239
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "difference":J
    .end local v3    # "minutes":J
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 222
    :cond_1
    invoke-static {p4}, Lcom/nativex/common/Utilities;->parseHtmlDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 223
    .local v5, "reminderDate":Ljava/util/Date;
    if-eqz v5, :cond_0

    .line 226
    iget-object v7, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->startDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long v1, v7, v9

    .line 227
    .restart local v1    # "difference":J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-ltz v7, :cond_0

    .line 230
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/nativex/common/Utilities;->milliesToMinutes(J)J

    move-result-wide v3

    .restart local v3    # "minutes":J
    goto :goto_0
.end method

.method private parseStatus()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 191
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 192
    .local v0, "status":Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 193
    const-string v1, "tentative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 201
    :goto_0
    return v1

    .line 195
    :cond_0
    const-string v1, "confirmed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    const/4 v1, 0x1

    goto :goto_0

    .line 197
    :cond_1
    const-string v1, "cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 198
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 201
    goto :goto_0
.end method

.method private parseTransparency()I
    .locals 2

    .prologue
    .line 205
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getTransparency()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "transparency":Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "transparent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    const/4 v1, 0x1

    .line 209
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public add(Landroid/content/Context;Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "calendar"    # Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    iget-object v8, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v8}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getStart()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nativex/common/Utilities;->parseHtmlDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->startDate:Ljava/util/Date;

    .line 150
    iget-object v8, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v8}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getEnd()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nativex/common/Utilities;->parseHtmlDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    iput-object v8, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->endDate:Ljava/util/Date;

    .line 151
    iget-object v8, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->startDate:Ljava/util/Date;

    if-nez v8, :cond_0

    .line 152
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Invalid start time."

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 154
    :cond_0
    iget-object v8, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->endDate:Ljava/util/Date;

    if-nez v8, :cond_1

    .line 155
    new-instance v8, Ljava/lang/Exception;

    const-string v9, "Invalid end time."

    invoke-direct {v8, v9}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v8

    .line 158
    :cond_1
    iget-object v8, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    # invokes: Lcom/nativex/monetization/mraid/MRAIDCalendarUtils;->validateCalendarData(Lcom/nativex/monetization/mraid/objects/CalendarEntryData;)V
    invoke-static {v8}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils;->access$100(Lcom/nativex/monetization/mraid/objects/CalendarEntryData;)V

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    .local v0, "cr":Landroid/content/ContentResolver;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 162
    .local v7, "values":Landroid/content/ContentValues;
    const-string v8, "dtstart"

    iget-object v9, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->startDate:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 163
    const-string v8, "dtend"

    iget-object v9, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->endDate:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 164
    const-string v8, "title"

    iget-object v9, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v9}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getDescription()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string v8, "description"

    iget-object v9, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v9}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getSummary()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string v8, "eventLocation"

    iget-object v9, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v9}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getLocation()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v8, "availability"

    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->parseTransparency()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    iget-object v8, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->startDate:Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getTimezoneOffset()I

    move-result v8

    invoke-static {v8}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, "timeZoneIds":[Ljava/lang/String;
    if-eqz v5, :cond_4

    array-length v8, v5

    if-lez v8, :cond_4

    .line 171
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 175
    .local v4, "timeZone":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Time Zone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nativex/monetization/mraid/MRAIDLogger;->d(Ljava/lang/String;)V

    .line 176
    const-string v8, "eventTimezone"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v8, "calendar_id"

    invoke-virtual {p2}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->parseStatus()I

    move-result v3

    .line 179
    .local v3, "status":I
    if-ltz v3, :cond_2

    .line 180
    const-string v8, "eventStatus"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    :cond_2
    sget-object v8, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v8, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 183
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 185
    .local v1, "eventId":J
    iget-object v8, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v8}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getReminder()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 186
    iget-object v8, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v8}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getReminder()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, p1, v1, v2, v8}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$NewCalendarEntryCreator;->addReminder(Landroid/content/Context;JLjava/lang/String;)V

    .line 188
    :cond_3
    return-void

    .line 173
    .end local v1    # "eventId":J
    .end local v3    # "status":I
    .end local v4    # "timeZone":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_4
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "timeZone":Ljava/lang/String;
    goto :goto_0
.end method
