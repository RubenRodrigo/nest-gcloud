import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  const env = process.env.PORT || '3002';
  await app.listen(env);
}
bootstrap();
