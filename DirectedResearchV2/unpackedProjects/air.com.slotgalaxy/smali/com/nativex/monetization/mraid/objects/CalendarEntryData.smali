.class public Lcom/nativex/monetization/mraid/objects/CalendarEntryData;
.super Ljava/lang/Object;
.source "CalendarEntryData.java"


# instance fields
.field description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field end:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end"
    .end annotation
.end field

.field id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field location:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "location"
    .end annotation
.end field

.field reminder:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "reminder"
    .end annotation
.end field

.field start:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start"
    .end annotation
.end field

.field status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field summary:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "summary"
    .end annotation
.end field

.field transparency:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "transparency"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEnd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->end:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getReminder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->reminder:Ljava/lang/String;

    return-object v0
.end method

.method public getStart()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->start:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTransparency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->transparency:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->description:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setEnd(Ljava/lang/String;)V
    .locals 0
    .param p1, "end"    # Ljava/lang/String;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->end:Ljava/lang/String;

    .line 135
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->id:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "location"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->location:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setReminder(Ljava/lang/String;)V
    .locals 0
    .param p1, "reminder"    # Ljava/lang/String;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->reminder:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .locals 0
    .param p1, "start"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->start:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->status:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->summary:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setTransparency(Ljava/lang/String;)V
    .locals 0
    .param p1, "transparency"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/nativex/monetization/mraid/objects/CalendarEntryData;->transparency:Ljava/lang/String;

    .line 153
    return-void
.end method
