.class public Lorg/apache/log4j/or/jms/MessageRenderer;
.super Ljava/lang/Object;
.source "MessageRenderer.java"

# interfaces
.implements Lorg/apache/log4j/or/ObjectRenderer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public doRender(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 44
    instance-of v4, p1, Ljavax/jms/Message;

    if-eqz v4, :cond_0

    .line 45
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 46
    .local v3, "sbuf":Ljava/lang/StringBuffer;
    move-object v0, p1

    check-cast v0, Ljavax/jms/Message;

    move-object v2, v0

    .line 48
    .local v2, "m":Ljavax/jms/Message;
    :try_start_0
    const-string v4, "DeliveryMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-interface {v2}, Ljavax/jms/Message;->getJMSDeliveryMode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 56
    const-string v4, "UNKNOWN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    :goto_0
    const-string v4, ", CorrelationID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    invoke-interface {v2}, Ljavax/jms/Message;->getJMSCorrelationID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v4, ", Destination="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-interface {v2}, Ljavax/jms/Message;->getJMSDestination()Ljavax/jms/Destination;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 64
    const-string v4, ", Expiration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    invoke-interface {v2}, Ljavax/jms/Message;->getJMSExpiration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 67
    const-string v4, ", MessageID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-interface {v2}, Ljavax/jms/Message;->getJMSMessageID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v4, ", Priority="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-interface {v2}, Ljavax/jms/Message;->getJMSPriority()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 73
    const-string v4, ", Redelivered="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-interface {v2}, Ljavax/jms/Message;->getJMSRedelivered()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 76
    const-string v4, ", ReplyTo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-interface {v2}, Ljavax/jms/Message;->getJMSReplyTo()Ljavax/jms/Destination;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 79
    const-string v4, ", Timestamp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-interface {v2}, Ljavax/jms/Message;->getJMSTimestamp()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 82
    const-string v4, ", Type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 83
    invoke-interface {v2}, Ljavax/jms/Message;->getJMSType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    .end local v2    # "m":Ljavax/jms/Message;
    .end local v3    # "sbuf":Ljava/lang/StringBuffer;
    :goto_2
    return-object v4

    .line 51
    .restart local v2    # "m":Ljavax/jms/Message;
    .restart local v3    # "sbuf":Ljava/lang/StringBuffer;
    :pswitch_0
    :try_start_1
    const-string v4, "NON_PERSISTENT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljavax/jms/JMSException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 93
    .local v1, "e":Ljavax/jms/JMSException;
    const-string v4, "Could not parse Message."

    invoke-static {v4, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 54
    .end local v1    # "e":Ljavax/jms/JMSException;
    :pswitch_1
    :try_start_2
    const-string v4, "PERSISTENT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljavax/jms/JMSException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 97
    .end local v2    # "m":Ljavax/jms/Message;
    .end local v3    # "sbuf":Ljava/lang/StringBuffer;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 49
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
