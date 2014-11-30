.class Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;
.super Ljava/lang/Object;
.source "MRAIDCalendarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nativex/monetization/mraid/MRAIDCalendarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OldCalendarEntryCreator"
.end annotation


# instance fields
.field private data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

.field private endDate:Ljava/util/Date;

.field private startDate:Ljava/util/Date;

.field private test:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/nativex/monetization/mraid/objects/CalendarEntryData;)V
    .locals 1
    .param p1, "data"    # Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->test:Z

    .line 251
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    .line 252
    return-void
.end method

.method public constructor <init>(Lcom/nativex/monetization/mraid/objects/CalendarEntryData;Z)V
    .locals 1
    .param p1, "data"    # Lcom/nativex/monetization/mraid/objects/CalendarEntryData;
    .param p2, "test"    # Z

    .prologue
    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->test:Z

    .line 255
    iput-object p1, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    .line 256
    iput-boolean p2, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->test:Z

    .line 257
    return-void
.end method

.method static synthetic access$000(Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;Landroid/app/Activity;Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    .locals 0
    .param p0, "x0"    # Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;
    .param p1, "x1"    # Landroid/app/Activity;
    .param p2, "x2"    # Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 242
    invoke-direct {p0, p1, p2}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->add(Landroid/app/Activity;Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V

    return-void
.end method

.method private add(Landroid/app/Activity;Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "calendar"    # Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 262
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getStart()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/Utilities;->parseHtmlDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->startDate:Ljava/util/Date;

    .line 263
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getEnd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nativex/common/Utilities;->parseHtmlDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->endDate:Ljava/util/Date;

    .line 264
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->startDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 265
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid start time."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->endDate:Ljava/util/Date;

    if-nez v0, :cond_1

    .line 268
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid end time."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    # invokes: Lcom/nativex/monetization/mraid/MRAIDCalendarUtils;->validateCalendarData(Lcom/nativex/monetization/mraid/objects/CalendarEntryData;)V
    invoke-static {v0}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils;->access$100(Lcom/nativex/monetization/mraid/objects/CalendarEntryData;)V

    .line 273
    if-eqz p2, :cond_3

    iget-boolean v0, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->test:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->CALENDAR:Lcom/nativex/monetization/mraid/MRAIDUtils$Features;

    invoke-virtual {v0}, Lcom/nativex/monetization/mraid/MRAIDUtils$Features;->getSupportLevel()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 274
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->addUsingProvider(Landroid/app/Activity;Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_3
    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->addUsingIntent(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private addReminder(Landroid/app/Activity;JLjava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "eventId"    # J
    .param p4, "reminder"    # Ljava/lang/String;

    .prologue
    .line 317
    const-wide/16 v3, 0x0

    .line 318
    .local v3, "minutes":J
    const-string v7, "-"

    invoke-virtual {p4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 319
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 320
    .local v1, "difference":J
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/nativex/common/Utilities;->milliesToMinutes(J)J

    move-result-wide v3

    .line 333
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->getCalendarUriBase(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "reminders"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 334
    .local v0, "REMINDERS_URI":Landroid/net/Uri;
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 335
    .local v6, "values":Landroid/content/ContentValues;
    const-string v7, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 336
    const-string v7, "method"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 337
    const-string v7, "minutes"

    long-to-int v8, v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 338
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 339
    .end local v0    # "REMINDERS_URI":Landroid/net/Uri;
    .end local v1    # "difference":J
    .end local v6    # "values":Landroid/content/ContentValues;
    :cond_0
    return-void

    .line 322
    :cond_1
    invoke-static {p4}, Lcom/nativex/common/Utilities;->parseHtmlDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 323
    .local v5, "reminderDate":Ljava/util/Date;
    if-eqz v5, :cond_0

    .line 326
    iget-object v7, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->startDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long v1, v7, v9

    .line 327
    .restart local v1    # "difference":J
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-ltz v7, :cond_0

    .line 330
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    invoke-static {v7, v8}, Lcom/nativex/common/Utilities;->milliesToMinutes(J)J

    move-result-wide v3

    goto :goto_0
.end method

.method private addUsingIntent(Landroid/app/Activity;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 403
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 404
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const-string v1, "beginTime"

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->startDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 406
    const-string v1, "endTime"

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->endDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 407
    const-string v1, "title"

    iget-object v2, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v2}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 408
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 409
    return-void
.end method

.method private addUsingProvider(Landroid/app/Activity;Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;)V
    .locals 10
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "calendar"    # Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 283
    const/4 v4, 0x0

    .line 284
    .local v4, "hasReminder":Z
    iget-object v7, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v7}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getReminder()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 285
    const/4 v4, 0x1

    .line 287
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 288
    .local v2, "event":Landroid/content/ContentValues;
    const-string v7, "calendar_id"

    invoke-virtual {p2}, Lcom/nativex/monetization/dialogs/custom/AddCalendarEntryDialog$Calendar;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 289
    const-string v7, "title"

    iget-object v8, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v8}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v7, "description"

    iget-object v8, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v8}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getSummary()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v7, "eventLocation"

    iget-object v8, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v8}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getLocation()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v7, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->startDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 294
    .local v5, "startTime":J
    iget-object v7, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->endDate:Ljava/util/Date;

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 296
    .local v0, "endTime":J
    const-string v7, "dtstart"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 297
    const-string v7, "dtend"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 299
    const-string v7, "allDay"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 300
    const-string v7, "eventStatus"

    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->parseStatus()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 301
    const-string v7, "visibility"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v7, "transparency"

    invoke-direct {p0}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->parseTransparency()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    const-string v7, "hasAlarm"

    if-eqz v4, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 305
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->getCalendarUriBase(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "events"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 307
    .local v3, "eventsUri":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->uri:Landroid/net/Uri;

    .line 308
    if-eqz v4, :cond_1

    .line 309
    iget-object v7, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v9}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getReminder()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v7, v8, v9}, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->addReminder(Landroid/app/Activity;JLjava/lang/String;)V

    .line 311
    :cond_1
    return-void

    .end local v3    # "eventsUri":Landroid/net/Uri;
    :cond_2
    move v8, v9

    .line 303
    goto :goto_0
.end method

.method private getCalendarUriBase(Landroid/app/Activity;)Ljava/lang/String;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 373
    const/4 v6, 0x0

    .line 374
    .local v6, "calendarUriBase":Ljava/lang/String;
    const-string v0, "content://calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 375
    .local v1, "calendars":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 377
    .local v7, "managedCursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 382
    :goto_0
    if-eqz v7, :cond_1

    .line 383
    const-string v6, "content://calendar/"

    .line 398
    :cond_0
    :goto_1
    return-object v6

    .line 385
    :cond_1
    const-string v0, "content://com.android.calendar/calendars"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 387
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 392
    :goto_2
    if-eqz v7, :cond_0

    .line 393
    const-string v6, "content://com.android.calendar/"

    goto :goto_1

    .line 378
    :catch_0
    move-exception v0

    goto :goto_0

    .line 388
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method private parseStatus()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 349
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getStatus()Ljava/lang/String;

    move-result-object v0

    .line 350
    .local v0, "status":Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 351
    const-string v1, "tentative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 359
    :goto_0
    return v1

    .line 353
    :cond_0
    const-string v1, "confirmed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 354
    const/4 v1, 0x1

    goto :goto_0

    .line 355
    :cond_1
    const-string v1, "cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 359
    goto :goto_0
.end method

.method private parseTransparency()I
    .locals 2

    .prologue
    .line 363
    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->data:Lcom/nativex/monetization/mraid/objects/CalendarEntryData;

    invoke-virtual {v1}, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->getTransparency()Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "transparency":Ljava/lang/String;
    invoke-static {v0}, Lcom/nativex/common/Utilities;->stringIsEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "transparent"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    const/4 v1, 0x1

    .line 367
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 343
    iget-object v0, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->uri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/nativex/monetization/mraid/MRAIDCalendarUtils$OldCalendarEntryCreator;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 346
    :cond_0
    return-void
.end method
