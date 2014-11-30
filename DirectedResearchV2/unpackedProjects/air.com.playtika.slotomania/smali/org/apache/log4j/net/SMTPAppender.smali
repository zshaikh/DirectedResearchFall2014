.class public Lorg/apache/log4j/net/SMTPAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "SMTPAppender.java"

# interfaces
.implements Lorg/apache/log4j/xml/UnrecognizedElementHandler;


# static fields
.field static class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;


# instance fields
.field private bcc:Ljava/lang/String;

.field private bufferSize:I

.field protected cb:Lorg/apache/log4j/helpers/CyclicBuffer;

.field private cc:Ljava/lang/String;

.field protected evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

.field private from:Ljava/lang/String;

.field private locationInfo:Z

.field protected msg:Ljavax/mail/Message;

.field private smtpDebug:Z

.field private smtpHost:Ljava/lang/String;

.field private smtpPassword:Ljava/lang/String;

.field private smtpUsername:Ljava/lang/String;

.field private subject:Ljava/lang/String;

.field private to:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    new-instance v0, Lorg/apache/log4j/net/DefaultEvaluator;

    invoke-direct {v0}, Lorg/apache/log4j/net/DefaultEvaluator;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/log4j/net/SMTPAppender;-><init>(Lorg/apache/log4j/spi/TriggeringEventEvaluator;)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/spi/TriggeringEventEvaluator;)V
    .locals 2
    .param p1, "evaluator"    # Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    .line 86
    iput-boolean v1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpDebug:Z

    .line 87
    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/log4j/net/SMTPAppender;->bufferSize:I

    .line 88
    iput-boolean v1, p0, Lorg/apache/log4j/net/SMTPAppender;->locationInfo:Z

    .line 90
    new-instance v0, Lorg/apache/log4j/helpers/CyclicBuffer;

    iget v1, p0, Lorg/apache/log4j/net/SMTPAppender;->bufferSize:I

    invoke-direct {v0, v1}, Lorg/apache/log4j/helpers/CyclicBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    .line 112
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    .line 113
    return-void
.end method

.method static access$000(Lorg/apache/log4j/net/SMTPAppender;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/log4j/net/SMTPAppender;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpUsername:Ljava/lang/String;

    return-object v0
.end method

.method static access$100(Lorg/apache/log4j/net/SMTPAppender;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/log4j/net/SMTPAppender;

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPassword:Ljava/lang/String;

    return-object v0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 441
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public activateOptions()V
    .locals 4

    .prologue
    .line 121
    invoke-virtual {p0}, Lorg/apache/log4j/net/SMTPAppender;->createSession()Ljavax/mail/Session;

    move-result-object v1

    .line 122
    .local v1, "session":Ljavax/mail/Session;
    new-instance v2, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v2, v1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    iput-object v2, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    .line 125
    :try_start_0
    iget-object v2, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    invoke-virtual {p0, v2}, Lorg/apache/log4j/net/SMTPAppender;->addressMessage(Ljavax/mail/Message;)V

    .line 126
    iget-object v2, p0, Lorg/apache/log4j/net/SMTPAppender;->subject:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    iget-object v3, p0, Lorg/apache/log4j/net/SMTPAppender;->subject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavax/mail/Message;->setSubject(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    instance-of v2, v2, Lorg/apache/log4j/spi/OptionHandler;

    if-eqz v2, :cond_1

    .line 134
    iget-object p0, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    .end local p0    # "this":Lorg/apache/log4j/net/SMTPAppender;
    check-cast p0, Lorg/apache/log4j/spi/OptionHandler;

    invoke-interface {p0}, Lorg/apache/log4j/spi/OptionHandler;->activateOptions()V

    .line 136
    :cond_1
    return-void

    .line 129
    .restart local p0    # "this":Lorg/apache/log4j/net/SMTPAppender;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 130
    .local v0, "e":Ljavax/mail/MessagingException;
    const-string v2, "Could not activate SMTPAppender options."

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected addressMessage(Ljavax/mail/Message;)V
    .locals 2
    .param p1, "msg"    # Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->from:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 145
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->from:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/net/SMTPAppender;->getAddress(Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    .line 150
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->to:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->to:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 151
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->to:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/net/SMTPAppender;->parseAddress(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 155
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cc:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 156
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->cc:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/net/SMTPAppender;->parseAddress(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 160
    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->bcc:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->bcc:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 161
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->bcc:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/apache/log4j/net/SMTPAppender;->parseAddress(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 163
    :cond_2
    return-void

    .line 147
    :cond_3
    invoke-virtual {p1}, Ljavax/mail/Message;->setFrom()V

    goto :goto_0
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 1
    .param p1, "event"    # Lorg/apache/log4j/spi/LoggingEvent;

    .prologue
    .line 203
    invoke-virtual {p0}, Lorg/apache/log4j/net/SMTPAppender;->checkEntryConditions()Z

    move-result v0

    if-nez v0, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 210
    iget-boolean v0, p0, Lorg/apache/log4j/net/SMTPAppender;->locationInfo:Z

    if-eqz v0, :cond_2

    .line 211
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    .line 213
    :cond_2
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/CyclicBuffer;->add(Lorg/apache/log4j/spi/LoggingEvent;)V

    .line 214
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    invoke-interface {v0, p1}, Lorg/apache/log4j/spi/TriggeringEventEvaluator;->isTriggeringEvent(Lorg/apache/log4j/spi/LoggingEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/apache/log4j/net/SMTPAppender;->sendBuffer()V

    goto :goto_0
.end method

.method protected checkEntryConditions()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "]."

    .line 227
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const-string v1, "Message object not configured."

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    move v0, v3

    .line 243
    :goto_0
    return v0

    .line 232
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No TriggeringEventEvaluator is set for appender ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    move v0, v3

    .line 235
    goto :goto_0

    .line 239
    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    if-nez v0, :cond_2

    .line 240
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "No layout set for appender named ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;)V

    move v0, v3

    .line 241
    goto :goto_0

    .line 243
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 250
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createSession()Ljavax/mail/Session;
    .locals 6

    .prologue
    .line 170
    const/4 v2, 0x0

    .line 172
    .local v2, "props":Ljava/util/Properties;
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    .end local v2    # "props":Ljava/util/Properties;
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .restart local v2    # "props":Ljava/util/Properties;
    :goto_0
    iget-object v4, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpHost:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 177
    const-string v4, "mail.smtp.host"

    iget-object v5, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpHost:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :cond_0
    const/4 v0, 0x0

    .line 181
    .local v0, "auth":Ljavax/mail/Authenticator;
    iget-object v4, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPassword:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpUsername:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 182
    const-string v4, "mail.smtp.auth"

    const-string v5, "true"

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v0, Lorg/apache/log4j/net/SMTPAppender$1;

    .end local v0    # "auth":Ljavax/mail/Authenticator;
    invoke-direct {v0, p0}, Lorg/apache/log4j/net/SMTPAppender$1;-><init>(Lorg/apache/log4j/net/SMTPAppender;)V

    .line 189
    .restart local v0    # "auth":Ljavax/mail/Authenticator;
    :cond_1
    invoke-static {v2, v0}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v3

    .line 190
    .local v3, "session":Ljavax/mail/Session;
    iget-boolean v4, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpDebug:Z

    if-eqz v4, :cond_2

    .line 191
    iget-boolean v4, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpDebug:Z

    invoke-virtual {v3, v4}, Ljavax/mail/Session;->setDebug(Z)V

    .line 193
    :cond_2
    return-object v3

    .line 173
    .end local v0    # "auth":Ljavax/mail/Authenticator;
    .end local v2    # "props":Ljava/util/Properties;
    .end local v3    # "session":Ljavax/mail/Session;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 174
    .local v1, "ex":Ljava/lang/SecurityException;
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .restart local v2    # "props":Ljava/util/Properties;
    goto :goto_0
.end method

.method getAddress(Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;
    .locals 4
    .param p1, "addressStr"    # Ljava/lang/String;

    .prologue
    .line 255
    :try_start_0
    new-instance v1, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v1, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :goto_0
    return-object v1

    .line 256
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 257
    .local v0, "e":Ljavax/mail/internet/AddressException;
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not parse address ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 259
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBcc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->bcc:Ljava/lang/String;

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lorg/apache/log4j/net/SMTPAppender;->bufferSize:I

    return v0
.end method

.method public getCc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cc:Ljava/lang/String;

    return-object v0
.end method

.method public final getEvaluator()Lorg/apache/log4j/spi/TriggeringEventEvaluator;
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    return-object v0
.end method

.method public getEvaluatorClass()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationInfo()Z
    .locals 1

    .prologue
    .line 467
    iget-boolean v0, p0, Lorg/apache/log4j/net/SMTPAppender;->locationInfo:Z

    return v0
.end method

.method public getSMTPDebug()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpDebug:Z

    return v0
.end method

.method public getSMTPHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpHost:Ljava/lang/String;

    return-object v0
.end method

.method public getSMTPPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSMTPUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpUsername:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->to:Ljava/lang/String;

    return-object v0
.end method

.method parseAddress(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
    .locals 4
    .param p1, "addressStr"    # Ljava/lang/String;

    .prologue
    .line 265
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p1, v1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    :try_end_0
    .catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 269
    :goto_0
    return-object v1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljavax/mail/internet/AddressException;
    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not parse address ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 269
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parseUnrecognizedElement(Lorg/w3c/dom/Element;Ljava/util/Properties;)Z
    .locals 3
    .param p1, "element"    # Lorg/w3c/dom/Element;
    .param p2, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 578
    const-string v1, "triggeringPolicy"

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 579
    sget-object v1, Lorg/apache/log4j/net/SMTPAppender;->class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.apache.log4j.spi.TriggeringEventEvaluator"

    invoke-static {v1}, Lorg/apache/log4j/net/SMTPAppender;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/net/SMTPAppender;->class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;

    :goto_0
    invoke-static {p1, p2, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseElement(Lorg/w3c/dom/Element;Ljava/util/Properties;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 582
    .local v0, "triggerPolicy":Ljava/lang/Object;
    instance-of v1, v0, Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    if-eqz v1, :cond_0

    .line 583
    check-cast v0, Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    .end local v0    # "triggerPolicy":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/apache/log4j/net/SMTPAppender;->setEvaluator(Lorg/apache/log4j/spi/TriggeringEventEvaluator;)V

    .line 585
    :cond_0
    const/4 v1, 0x1

    .line 588
    :goto_1
    return v1

    .line 579
    :cond_1
    sget-object v1, Lorg/apache/log4j/net/SMTPAppender;->class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;

    goto :goto_0

    .line 588
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public requiresLayout()Z
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x1

    return v0
.end method

.method protected sendBuffer()V
    .locals 12

    .prologue
    .line 299
    :try_start_0
    new-instance v6, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v6}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    .line 301
    .local v6, "part":Ljavax/mail/internet/MimeBodyPart;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 302
    .local v8, "sbuf":Ljava/lang/StringBuffer;
    iget-object v10, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v10}, Lorg/apache/log4j/Layout;->getHeader()Ljava/lang/String;

    move-result-object v9

    .line 303
    .local v9, "t":Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 304
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 305
    :cond_0
    iget-object v10, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v10}, Lorg/apache/log4j/helpers/CyclicBuffer;->length()I

    move-result v4

    .line 306
    .local v4, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 308
    iget-object v10, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v10}, Lorg/apache/log4j/helpers/CyclicBuffer;->get()Lorg/apache/log4j/spi/LoggingEvent;

    move-result-object v1

    .line 309
    .local v1, "event":Lorg/apache/log4j/spi/LoggingEvent;
    iget-object v10, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v10, v1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    iget-object v10, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v10}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 311
    invoke-virtual {v1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v7

    .line 312
    .local v7, "s":[Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 313
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v10, v7

    if-ge v3, v10, :cond_1

    .line 314
    aget-object v10, v7, v3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 315
    sget-object v10, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 313
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 306
    .end local v3    # "j":I
    .end local v7    # "s":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    .end local v1    # "event":Lorg/apache/log4j/spi/LoggingEvent;
    :cond_2
    iget-object v10, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v10}, Lorg/apache/log4j/Layout;->getFooter()Ljava/lang/String;

    move-result-object v9

    .line 321
    if-eqz v9, :cond_3

    .line 322
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    :cond_3
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v11}, Lorg/apache/log4j/Layout;->getContentType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    new-instance v5, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v5}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 326
    .local v5, "mp":Ljavax/mail/Multipart;
    invoke-virtual {v5, v6}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 327
    iget-object v10, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    invoke-interface {v10, v5}, Ljavax/mail/Part;->setContent(Ljavax/mail/Multipart;)V

    .line 329
    iget-object v10, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10, v11}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V

    .line 330
    iget-object v10, p0, Lorg/apache/log4j/net/SMTPAppender;->msg:Ljavax/mail/Message;

    invoke-static {v10}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v2    # "i":I
    .end local v4    # "len":I
    .end local v5    # "mp":Ljavax/mail/Multipart;
    .end local v6    # "part":Ljavax/mail/internet/MimeBodyPart;
    .end local v8    # "sbuf":Ljava/lang/StringBuffer;
    .end local v9    # "t":Ljava/lang/String;
    :goto_2
    return-void

    .line 331
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    const-string v10, "Error occured while sending e-mail notification."

    invoke-static {v10, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setBcc(Ljava/lang/String;)V
    .locals 0
    .param p1, "addresses"    # Ljava/lang/String;

    .prologue
    .line 491
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->bcc:Ljava/lang/String;

    .line 492
    return-void
.end method

.method public setBufferSize(I)V
    .locals 1
    .param p1, "bufferSize"    # I

    .prologue
    .line 390
    iput p1, p0, Lorg/apache/log4j/net/SMTPAppender;->bufferSize:I

    .line 391
    iget-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->cb:Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/CyclicBuffer;->resize(I)V

    .line 392
    return-void
.end method

.method public setCc(Ljava/lang/String;)V
    .locals 0
    .param p1, "addresses"    # Ljava/lang/String;

    .prologue
    .line 475
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->cc:Ljava/lang/String;

    .line 476
    return-void
.end method

.method public final setEvaluator(Lorg/apache/log4j/spi/TriggeringEventEvaluator;)V
    .locals 2
    .param p1, "trigger"    # Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    .prologue
    .line 560
    if-nez p1, :cond_0

    .line 561
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trigger"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 563
    :cond_0
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    .line 564
    return-void
.end method

.method public setEvaluatorClass(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 439
    sget-object v0, Lorg/apache/log4j/net/SMTPAppender;->class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.spi.TriggeringEventEvaluator"

    invoke-static {v0}, Lorg/apache/log4j/net/SMTPAppender;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SMTPAppender;->class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;

    :goto_0
    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    invoke-static {p1, v0, v1}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    iput-object v0, p0, Lorg/apache/log4j/net/SMTPAppender;->evaluator:Lorg/apache/log4j/spi/TriggeringEventEvaluator;

    .line 443
    return-void

    .line 439
    :cond_0
    sget-object v0, Lorg/apache/log4j/net/SMTPAppender;->class$org$apache$log4j$spi$TriggeringEventEvaluator:Ljava/lang/Class;

    goto :goto_0
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 368
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->from:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public setLocationInfo(Z)V
    .locals 0
    .param p1, "locationInfo"    # Z

    .prologue
    .line 459
    iput-boolean p1, p0, Lorg/apache/log4j/net/SMTPAppender;->locationInfo:Z

    .line 460
    return-void
.end method

.method public setSMTPDebug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .prologue
    .line 527
    iput-boolean p1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpDebug:Z

    .line 528
    return-void
.end method

.method public setSMTPHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "smtpHost"    # Ljava/lang/String;

    .prologue
    .line 400
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpHost:Ljava/lang/String;

    .line 401
    return-void
.end method

.method public setSMTPPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 508
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpPassword:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public setSMTPUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 517
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->smtpUsername:Ljava/lang/String;

    .line 518
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 377
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->subject:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 417
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender;->to:Ljava/lang/String;

    .line 418
    return-void
.end method
